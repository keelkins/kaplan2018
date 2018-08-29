-- MySQL dump 10.13  Distrib 5.6.40-84.0, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wp_kaplan2018
-- ------------------------------------------------------
-- Server version	5.6.40-84.0-log

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
-- Table structure for table `wp_blc_filters`
--

DROP TABLE IF EXISTS `wp_blc_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_blc_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blc_filters`
--

LOCK TABLES `wp_blc_filters` WRITE;
/*!40000 ALTER TABLE `wp_blc_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_blc_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_blc_instances`
--

DROP TABLE IF EXISTS `wp_blc_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_blc_instances` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL,
  `container_id` int(10) unsigned NOT NULL,
  `container_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `link_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parser_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'link',
  `container_field` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_context` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `raw_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`instance_id`),
  KEY `link_id` (`link_id`),
  KEY `source_id` (`container_type`,`container_id`),
  KEY `parser_type` (`parser_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blc_instances`
--

LOCK TABLES `wp_blc_instances` WRITE;
/*!40000 ALTER TABLE `wp_blc_instances` DISABLE KEYS */;
INSERT INTO `wp_blc_instances` VALUES (1,1,1,'comment','A WordPress Commenter','url_field','comment_author_url','','https://wpengine.com/'),(2,2,1,'comment','Gravatar','link','comment_content','','https://gravatar.com');
/*!40000 ALTER TABLE `wp_blc_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_blc_links`
--

DROP TABLE IF EXISTS `wp_blc_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_blc_links` (
  `link_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_failure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_check` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_success` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_check_attempt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_count` int(4) unsigned NOT NULL DEFAULT '0',
  `final_url` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `redirect_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `http_code` smallint(6) NOT NULL DEFAULT '0',
  `status_code` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `status_text` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `request_duration` float NOT NULL DEFAULT '0',
  `timeout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `broken` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `warning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `may_recheck` tinyint(1) NOT NULL DEFAULT '1',
  `being_checked` tinyint(1) NOT NULL DEFAULT '0',
  `result_hash` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `false_positive` tinyint(1) NOT NULL DEFAULT '0',
  `dismissed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `url` (`url`(150)),
  KEY `final_url` (`final_url`(150)),
  KEY `http_code` (`http_code`),
  KEY `broken` (`broken`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blc_links`
--

LOCK TABLES `wp_blc_links` WRITE;
/*!40000 ALTER TABLE `wp_blc_links` DISABLE KEYS */;
INSERT INTO `wp_blc_links` VALUES (1,'https://wpengine.com/','0000-00-00 00:00:00','2017-06-30 14:40:43','2017-06-30 14:40:43','2017-06-30 14:40:43',0,'https://wpengine.com/',0,'=== HTTP code : 200 ===\n\nResponse headers\n================\nHTTP/1.1 200 OK\r\nDate: Fri, 30 Jun 2017 14:40:43 GMT\r\nContent-Type: text/html; charset=UTF-8\r\nConnection: close\r\nSet-Cookie: __cfduid=de4fba732de457cc69ab4a013771711531498833643; expires=Sat, 30-Jun-18 14:40:43 GMT; path=/; domain=.wpengine.com; HttpOnly\r\nExpires: Thu, 19 Nov 1981 08:52:00 GMT\r\nPragma: no-cache\r\nLink: &lt;https://wpengine.com/wp-json/&gt;; rel=&quot;https://api.w.org/&quot;\r\nLink: &lt;https://wpengine.com/&gt;; rel=shortlink\r\nX-Cacheable: SHORT\r\nVary: Accept-Encoding,Cookie\r\nCache-Control: max-age=600, must-revalidate\r\nX-Cache: HIT: 32\r\nX-Pass-Why: \r\nX-Cache-Group: normal\r\nX-Type: default\r\nX-Frame-Options: SAMEORIGIN\r\nServer: cloudflare-nginx\r\nCF-RAY: 3771e1ddfb6f29fb-SEA\r\n\r\nRequest headers\n================\nHEAD / HTTP/1.1\r\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)\r\nHost: wpengine.com\r\nAccept: */*\r\nReferer: https://kaplan2018.wpengine.com\r\nConnection: close\r\nX-NewRelic-ID: VQAHVlFQARAFXFFRDwkGXg==\r\nX-NewRelic-Transaction: PxQGUVcHWwYJUgBUDwYAVQACFB8EBw8RVU4aAwwBUQoBU11SCVMKV1YHVkNKQVwFBQBVVAIBFTs=\r\n\r\n\nLink is valid.',200,'','',0.348933,0,0,0,1,0,'200|0|0|https://wpengine.com/',0,0),(2,'https://gravatar.com','0000-00-00 00:00:00','2017-06-30 14:40:42','2017-06-30 14:40:42','2017-06-30 14:40:42',0,'https://en.gravatar.com/',1,'=== HTTP code : 200 ===\n\nResponse headers\n================\nHTTP/1.1 302 Found\r\nServer: nginx\r\nDate: Fri, 30 Jun 2017 14:40:42 GMT\r\nContent-Type: text/html; charset=utf-8\r\nConnection: close\r\nP3P: CP=&quot;CAO PSA&quot;\r\nX-Frame-Options: SAMEORIGIN\r\nExpires: Wed, 11 Jan 1984 05:00:00 GMT\r\nLast-Modified: Fri, 30 Jun 2017 14:40:42 GMT\r\nCache-Control: no-cache, must-revalidate, max-age=0\r\nPragma: no-cache\r\nLocation: https://en.gravatar.com/\r\n\r\nHTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Fri, 30 Jun 2017 14:40:43 GMT\r\nContent-Type: text/html; charset=utf-8\r\nConnection: close\r\nVary: Accept-Encoding\r\nP3P: CP=&quot;CAO PSA&quot;\r\nExpires: Wed, 11 Jan 1984 05:00:00 GMT\r\nLast-Modified: Fri, 30 Jun 2017 14:40:43 GMT\r\nCache-Control: no-cache, must-revalidate, max-age=0\r\nPragma: no-cache\r\nX-Frame-Options: SAMEORIGIN\r\n\r\nRequest headers\n================\nHEAD / HTTP/1.1\r\nUser-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)\r\nHost: en.gravatar.com\r\nAccept: */*\r\nReferer: https://kaplan2018.wpengine.com\r\nConnection: close\r\nX-NewRelic-ID: VQAHVlFQARAFXFFRDwkGXg==\r\nX-NewRelic-Transaction: PxQGUVcHWwYJUgBUDwYAVQACFB8EBw8RVU4aAwwBUQoBU11SCVMKV1YHVkNKQVwFBQBVVAIBFTs=\r\n\r\n\nLink is valid.',200,'','',0.480582,0,0,0,1,0,'200|0|0|https://en.gravatar.com/',0,0);
/*!40000 ALTER TABLE `wp_blc_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_blc_synch`
--

DROP TABLE IF EXISTS `wp_blc_synch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_blc_synch` (
  `container_id` int(20) unsigned NOT NULL,
  `container_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `synched` tinyint(2) unsigned NOT NULL,
  `last_synch` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`container_type`,`container_id`),
  KEY `synched` (`synched`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blc_synch`
--

LOCK TABLES `wp_blc_synch` WRITE;
/*!40000 ALTER TABLE `wp_blc_synch` DISABLE KEYS */;
INSERT INTO `wp_blc_synch` VALUES (1,'comment',1,'2017-06-30 14:40:42');
/*!40000 ALTER TABLE `wp_blc_synch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wpengine.com/','','2017-06-20 20:39:42','2017-06-20 20:39:42','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_ewwwio_images`
--

DROP TABLE IF EXISTS `wp_ewwwio_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_ewwwio_images` (
  `id` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `attachment_id` bigint(20) unsigned DEFAULT NULL,
  `gallery` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(75) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `converted` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `results` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `backup` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `level` int(5) unsigned DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `updates` int(5) unsigned DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT '1971-01-01 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `trace` blob,
  UNIQUE KEY `id` (`id`),
  KEY `path_image_size` (`path`(191),`image_size`),
  KEY `attachment_info` (`gallery`(3),`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_ewwwio_images`
--

LOCK TABLES `wp_ewwwio_images` WRITE;
/*!40000 ALTER TABLE `wp_ewwwio_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_ewwwio_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_draft_submissions`
--

DROP TABLE IF EXISTS `wp_gf_draft_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_draft_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_draft_submissions`
--

LOCK TABLES `wp_gf_draft_submissions` WRITE;
/*!40000 ALTER TABLE `wp_gf_draft_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_draft_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_entry`
--

DROP TABLE IF EXISTS `wp_gf_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_entry` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `form_id_status` (`form_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_entry`
--

LOCK TABLES `wp_gf_entry` WRITE;
/*!40000 ALTER TABLE `wp_gf_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_entry_meta`
--

DROP TABLE IF EXISTS `wp_gf_entry_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_entry_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `entry_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `entry_id` (`entry_id`),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_entry_meta`
--

LOCK TABLES `wp_gf_entry_meta` WRITE;
/*!40000 ALTER TABLE `wp_gf_entry_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_entry_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_entry_notes`
--

DROP TABLE IF EXISTS `wp_gf_entry_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_entry_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `entry_user_key` (`entry_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_entry_notes`
--

LOCK TABLES `wp_gf_entry_notes` WRITE;
/*!40000 ALTER TABLE `wp_gf_entry_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_entry_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form`
--

DROP TABLE IF EXISTS `wp_gf_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form`
--

LOCK TABLES `wp_gf_form` WRITE;
/*!40000 ALTER TABLE `wp_gf_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form_meta`
--

DROP TABLE IF EXISTS `wp_gf_form_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form_meta`
--

LOCK TABLES `wp_gf_form_meta` WRITE;
/*!40000 ALTER TABLE `wp_gf_form_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_form_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gf_form_view`
--

DROP TABLE IF EXISTS `wp_gf_form_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gf_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gf_form_view`
--

LOCK TABLES `wp_gf_form_view` WRITE;
/*!40000 ALTER TABLE `wp_gf_form_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gf_form_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gpi_api_error_logs`
--

DROP TABLE IF EXISTS `wp_gpi_api_error_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gpi_api_error_logs` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `URL` text COLLATE utf8mb4_unicode_520_ci,
  `strategy` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_update` int(1) NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `timestamp` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `error` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gpi_api_error_logs`
--

LOCK TABLES `wp_gpi_api_error_logs` WRITE;
/*!40000 ALTER TABLE `wp_gpi_api_error_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gpi_api_error_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gpi_custom_urls`
--

DROP TABLE IF EXISTS `wp_gpi_custom_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gpi_custom_urls` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `URL` text COLLATE utf8mb4_unicode_520_ci,
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gpi_custom_urls`
--

LOCK TABLES `wp_gpi_custom_urls` WRITE;
/*!40000 ALTER TABLE `wp_gpi_custom_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gpi_custom_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gpi_page_blacklist`
--

DROP TABLE IF EXISTS `wp_gpi_page_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gpi_page_blacklist` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `URL` text,
  `type` varchar(200) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `custom_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gpi_page_blacklist`
--

LOCK TABLES `wp_gpi_page_blacklist` WRITE;
/*!40000 ALTER TABLE `wp_gpi_page_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gpi_page_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gpi_page_reports`
--

DROP TABLE IF EXISTS `wp_gpi_page_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gpi_page_reports` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `page_id` bigint(20) NOT NULL,
  `strategy` varchar(20) NOT NULL,
  `rule_key` varchar(200) NOT NULL,
  `rule_name` varchar(200) DEFAULT NULL,
  `rule_impact` decimal(5,2) DEFAULT NULL,
  `rule_blocks` longtext,
  PRIMARY KEY (`ID`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gpi_page_reports`
--

LOCK TABLES `wp_gpi_page_reports` WRITE;
/*!40000 ALTER TABLE `wp_gpi_page_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gpi_page_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gpi_page_stats`
--

DROP TABLE IF EXISTS `wp_gpi_page_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gpi_page_stats` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `URL` text,
  `response_code` int(10) DEFAULT NULL,
  `desktop_score` int(10) DEFAULT NULL,
  `mobile_score` int(10) DEFAULT NULL,
  `desktop_page_stats` longtext,
  `mobile_page_stats` longtext,
  `type` varchar(200) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `desktop_last_modified` varchar(20) NOT NULL,
  `mobile_last_modified` varchar(20) NOT NULL,
  `force_recheck` int(1) NOT NULL,
  `custom_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `object_id` (`object_id`),
  KEY `term_id` (`term_id`),
  KEY `custom_id` (`custom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gpi_page_stats`
--

LOCK TABLES `wp_gpi_page_stats` WRITE;
/*!40000 ALTER TABLE `wp_gpi_page_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gpi_page_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_gpi_summary_snapshots`
--

DROP TABLE IF EXISTS `wp_gpi_summary_snapshots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_gpi_summary_snapshots` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `strategy` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `snaptime` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `summary_stats` longtext COLLATE utf8mb4_unicode_520_ci,
  `summary_reports` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_gpi_summary_snapshots`
--

LOCK TABLES `wp_gpi_summary_snapshots` WRITE;
/*!40000 ALTER TABLE `wp_gpi_summary_snapshots` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_gpi_summary_snapshots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_itsec_lockouts`
--

DROP TABLE IF EXISTS `wp_itsec_lockouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_itsec_lockouts` (
  `lockout_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lockout_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lockout_user` bigint(20) unsigned DEFAULT NULL,
  `lockout_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lockout_id`),
  KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  KEY `lockout_host` (`lockout_host`),
  KEY `lockout_user` (`lockout_user`),
  KEY `lockout_username` (`lockout_username`),
  KEY `lockout_active` (`lockout_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_itsec_lockouts`
--

LOCK TABLES `wp_itsec_lockouts` WRITE;
/*!40000 ALTER TABLE `wp_itsec_lockouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_itsec_lockouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_itsec_log`
--

DROP TABLE IF EXISTS `wp_itsec_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_itsec_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `log_function` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `log_priority` int(2) NOT NULL DEFAULT '1',
  `log_date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `log_date_gmt` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `log_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log_user` bigint(20) unsigned DEFAULT NULL,
  `log_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log_referrer` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_itsec_log`
--

LOCK TABLES `wp_itsec_log` WRITE;
/*!40000 ALTER TABLE `wp_itsec_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_itsec_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_itsec_logs`
--

DROP TABLE IF EXISTS `wp_itsec_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_itsec_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `code` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'notice',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `init_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memory_current` bigint(20) unsigned NOT NULL DEFAULT '0',
  `memory_peak` bigint(20) unsigned NOT NULL DEFAULT '0',
  `url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `remote_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `code` (`code`),
  KEY `type` (`type`),
  KEY `timestamp` (`timestamp`),
  KEY `user_id` (`user_id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_itsec_logs`
--

LOCK TABLES `wp_itsec_logs` WRITE;
/*!40000 ALTER TABLE `wp_itsec_logs` DISABLE KEYS */;
INSERT INTO `wp_itsec_logs` VALUES (1,0,'malware','scan','a:1:{s:7:\"site_id\";i:0;}','process-start','2018-03-08 22:10:25','2018-03-08 22:10:25',54449992,54592712,'wp-cron',1,0,'104.196.234.53'),(2,1,'malware','scan','a:1:{s:15:\"cached-response\";b:0;}','process-update','2018-03-08 22:10:25','2018-03-08 22:10:25',54480472,54642016,'wp-cron',1,0,'104.196.234.53'),(3,1,'malware','scan','a:3:{s:8:\"scan_url\";s:100:\"https://sitecheck.sucuri.net/?scan=neoninstall.wpengine.com&p=ithemes&clear=1&json=1&time=1520547025\";s:8:\"req_args\";a:2:{s:15:\"connect_timeout\";i:30;s:7:\"timeout\";i:300;}s:8:\"response\";a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":10:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 08 Mar 2018 22:10:49 GMT\";s:12:\"content-type\";s:16:\"application/json\";s:14:\"content-length\";s:4:\"3018\";s:14:\"x-sucuri-cache\";s:4:\"MISS\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:11:\"x-sucuri-id\";s:5:\"11007\";}s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 08 Mar 2018 22:10:49 GMT\";s:12:\"content-type\";s:16:\"application/json\";s:14:\"content-length\";s:4:\"3018\";s:14:\"x-sucuri-cache\";s:4:\"MISS\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:11:\"x-sucuri-id\";s:5:\"11007\";}s:4:\"body\";s:3009:\"{\"SCAN\":{\"SITE\":[\"http:\\/\\/neoninstall.wpengine.com\"],\"DOMAIN\":[\"neoninstall.wpengine.com\"],\"IP\":[\"104.196.234.53\"],\"CMS\":[\"WordPress\"]},\"SYSTEM\":{\"NOTICE\":[\"Running on: nginx\"]},\"WEBAPP\":{\"INFO\":[[\"Application: WordPress\",\"http:\\/\\/www.wordpress.org\"]],\"VERSION\":[\"WordPress version from source: 4.9.4\",\"WordPress version:  4.9.4\"],\"NOTICE\":[\"WordPress theme:  http:\\/\\/neoninstall.wpengine.com\\/wp-content\\/themes\\/canvas\\/\"]},\"RECOMMENDATIONS\":[[\"Security Header: X-XSS-Protection Missing\",\"We did not find the recommended security header for XSS Protection on your site. \",\"http:\\/\\/kb.sucuri.net\\/warnings\\/hardening\\/headers-x-xss-protection\"],[\"Security Header: X-Frame-Options\",\"We did not find the recommended security header for ClickJacking Protection on your site. \",\"http:\\/\\/kb.sucuri.net\\/warnings\\/hardening\\/headers-x-frame-clickjacking\"],[\"Security Header: X-Content-Type nosniff\",\"We did not find the recommended security header to prevent Content Type sniffing on your site. \",\"http:\\/\\/kb.sucuri.net\\/warnings\\/hardening\\/headers-x-content-type\"]],\"LINKS\":{\"JSEXTERNAL\":[\"https:\\/\\/ajax.googleapis.com\\/ajax\\/libs\\/jquery\\/2.2.4\\/jquery.min.js?ver=2.2.4\",\"https:\\/\\/ajax.googleapis.com\\/ajax\\/libs\\/jqueryui\\/1.12.1\\/jquery-ui.min.js?ver=1.12.1\"],\"JSLOCAL\":[\"\\/wp-content\\/plugins\\/testimonial-rotator\\/js\\/jquery.cycletwo.js\",\"\\/wp-content\\/plugins\\/testimonial-rotator\\/js\\/jquery.cycletwo.addons.js\",\"\\/wp-content\\/plugins\\/wp-accessibility\\/js\\/longdesc.button.js?ver=1.0\",\"\\/wp-content\\/themes\\/canvas\\/js\\/min\\/scripts.js\",\"\\/wp-includes\\/js\\/wp-embed.min.js\"],\"URL\":[\"\\/contact\\/\",\"\\/about\\/\",\"\\/test\\/\",\"\\/hello-world\\/\",\"\\/2017\\/06\\/\",\"\\/category\\/uncategorized\\/\",\"\\/wp-login.php\",\"\\/feed\\/\",\"\\/comments\\/feed\\/\",\"\\/sample-page\\/\"]},\"BLACKLIST\":{\"INFO\":[[\"Domain clean by Google Safe Browsing: kaplan2018.wpengine.com\",\"http:\\/\\/safebrowsing.clients.google.com\\/safebrowsing\\/diagnostic?site=neoninstall.wpengine.com\"],[\"Domain clean by Norton Safe Web: kaplan2018.wpengine.com\",\"http:\\/\\/safeweb.norton.com\\/report\\/show?url=neoninstall.wpengine.com\"],[\"Domain clean on PhishTank: kaplan2018.wpengine.com\",\"http:\\/\\/www.phishtank.com\\/\"],[\"Domain clean on the Opera browser: kaplan2018.wpengine.com\",\"http:\\/\\/opera.com\\/\"],[\"Domain clean by SiteAdvisor: kaplan2018.wpengine.com\",\"http:\\/\\/www.siteadvisor.com\\/sites\\/neoninstall.wpengine.com\"],[\"Domain clean by the Sucuri Malware Labs: kaplan2018.wpengine.com\",\"http:\\/\\/labs.sucuri.net\\/?blacklist=neoninstall.wpengine.com\"],[\"Domain clean on SpamHaus DBL: kaplan2018.wpengine.com\",\"http:\\/\\/www.spamhaus.org\\/query\\/domain\\/neoninstall.wpengine.com\"],[\"Domain clean on Yandex (via Sophos): kaplan2018.wpengine.com\",\"http:\\/\\/www.yandex.com\\/infected?url=neoninstall.wpengine.com&amp;l10n=en\"],[\"Domain clean by ESET: kaplan2018.wpengine.com\",\"http:\\/\\/labs.sucuri.net\\/?eset\"]]},\"VERSION\":{\"VERSION\":[\"1.4\"],\"BUILDDATE\":[\"21 Feb 2018 02:32 UTC\"],\"DBDATE\":[\"15 Feb 2018 18:59 UTC\"],\"COMPILEDDATE\":[\"20 Feb 2018 23:32 UTC\"]}}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:3018:\"{\"SCAN\":{\"SITE\":[\"http:\\/\\/neoninstall.wpengine.com\"],\"DOMAIN\":[\"neoninstall.wpengine.com\"],\"IP\":[\"104.196.234.53\"],\"CMS\":[\"WordPress\"]},\"SYSTEM\":{\"NOTICE\":[\"Running on: nginx\"]},\"WEBAPP\":{\"INFO\":[[\"Application: WordPress\",\"http:\\/\\/www.wordpress.org\"]],\"VERSION\":[\"WordPress version from source: 4.9.4\",\"WordPress version:  4.9.4\"],\"NOTICE\":[\"WordPress theme:  http:\\/\\/neoninstall.wpengine.com\\/wp-content\\/themes\\/canvas\\/\"]},\"RECOMMENDATIONS\":[[\"Security Header: X-XSS-Protection Missing\",\"We did not find the recommended security header for XSS Protection on your site. \",\"http:\\/\\/kb.sucuri.net\\/warnings\\/hardening\\/headers-x-xss-protection\"],[\"Security Header: X-Frame-Options\",\"We did not find the recommended security header for ClickJacking Protection on your site. \",\"http:\\/\\/kb.sucuri.net\\/warnings\\/hardening\\/headers-x-frame-clickjacking\"],[\"Security Header: X-Content-Type nosniff\",\"We did not find the recommended security header to prevent Content Type sniffing on your site. \",\"http:\\/\\/kb.sucuri.net\\/warnings\\/hardening\\/headers-x-content-type\"]],\"LINKS\":{\"JSEXTERNAL\":[\"https:\\/\\/ajax.googleapis.com\\/ajax\\/libs\\/jquery\\/2.2.4\\/jquery.min.js?ver=2.2.4\",\"https:\\/\\/ajax.googleapis.com\\/ajax\\/libs\\/jqueryui\\/1.12.1\\/jquery-ui.min.js?ver=1.12.1\"],\"JSLOCAL\":[\"\\/wp-content\\/plugins\\/testimonial-rotator\\/js\\/jquery.cycletwo.js\",\"\\/wp-content\\/plugins\\/testimonial-rotator\\/js\\/jquery.cycletwo.addons.js\",\"\\/wp-content\\/plugins\\/wp-accessibility\\/js\\/longdesc.button.js?ver=1.0\",\"\\/wp-content\\/themes\\/canvas\\/js\\/min\\/scripts.js\",\"\\/wp-includes\\/js\\/wp-embed.min.js\"],\"URL\":[\"\\/contact\\/\",\"\\/about\\/\",\"\\/test\\/\",\"\\/hello-world\\/\",\"\\/2017\\/06\\/\",\"\\/category\\/uncategorized\\/\",\"\\/wp-login.php\",\"\\/feed\\/\",\"\\/comments\\/feed\\/\",\"\\/sample-page\\/\"]},\"BLACKLIST\":{\"INFO\":[[\"Domain clean by Google Safe Browsing: neoninstall.wpengine.com\",\"http:\\/\\/safebrowsing.clients.google.com\\/safebrowsing\\/diagnostic?site=neoninstall.wpengine.com\"],[\"Domain clean by Norton Safe Web: neoninstall.wpengine.com\",\"http:\\/\\/safeweb.norton.com\\/report\\/show?url=neoninstall.wpengine.com\"],[\"Domain clean on PhishTank: neoninstall.wpengine.com\",\"http:\\/\\/www.phishtank.com\\/\"],[\"Domain clean on the Opera browser: neoninstall.wpengine.com\",\"http:\\/\\/opera.com\\/\"],[\"Domain clean by SiteAdvisor: neoninstall.wpengine.com\",\"http:\\/\\/www.siteadvisor.com\\/sites\\/neoninstall.wpengine.com\"],[\"Domain clean by the Sucuri Malware Labs: neoninstall.wpengine.com\",\"http:\\/\\/labs.sucuri.net\\/?blacklist=neoninstall.wpengine.com\"],[\"Domain clean on SpamHaus DBL: neoninstall.wpengine.com\",\"http:\\/\\/www.spamhaus.org\\/query\\/domain\\/neoninstall.wpengine.com\"],[\"Domain clean on Yandex (via Sophos): neoninstall.wpengine.com\",\"http:\\/\\/www.yandex.com\\/infected?url=neoninstall.wpengine.com&amp;l10n=en\"],[\"Domain clean by ESET: neoninstall.wpengine.com\",\"http:\\/\\/labs.sucuri.net\\/?eset\"]]},\"VERSION\":{\"VERSION\":[\"1.4\"],\"BUILDDATE\":[\"21 Feb 2018 02:32 UTC\"],\"DBDATE\":[\"15 Feb 2018 18:59 UTC\"],\"COMPILEDDATE\":[\"20 Feb 2018 23:32 UTC\"]}}\";s:3:\"raw\";s:3299:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Thu, 08 Mar 2018 22:10:49 GMT\r\nContent-Type: application/json\r\nContent-Length: 3018\r\nConnection: close\r\nX-Sucuri-Cache: MISS\r\nX-XSS-Protection: 1; mode=block\r\nX-Frame-Options: SAMEORIGIN\r\nX-Content-Type-Options: nosniff\r\nX-Sucuri-ID: 11007\r\n\r\n{\"SCAN\":{\"SITE\":[\"http:\\/\\/neoninstall.wpengine.com\"],\"DOMAIN\":[\"neoninstall.wpengine.com\"],\"IP\":[\"104.196.234.53\"],\"CMS\":[\"WordPress\"]},\"SYSTEM\":{\"NOTICE\":[\"Running on: nginx\"]},\"WEBAPP\":{\"INFO\":[[\"Application: WordPress\",\"http:\\/\\/www.wordpress.org\"]],\"VERSION\":[\"WordPress version from source: 4.9.4\",\"WordPress version:  4.9.4\"],\"NOTICE\":[\"WordPress theme:  http:\\/\\/neoninstall.wpengine.com\\/wp-content\\/themes\\/canvas\\/\"]},\"RECOMMENDATIONS\":[[\"Security Header: X-XSS-Protection Missing\",\"We did not find the recommended security header for XSS Protection on your site. \",\"http:\\/\\/kb.sucuri.net\\/warnings\\/hardening\\/headers-x-xss-protection\"],[\"Security Header: X-Frame-Options\",\"We did not find the recommended security header for ClickJacking Protection on your site. \",\"http:\\/\\/kb.sucuri.net\\/warnings\\/hardening\\/headers-x-frame-clickjacking\"],[\"Security Header: X-Content-Type nosniff\",\"We did not find the recommended security header to prevent Content Type sniffing on your site. \",\"http:\\/\\/kb.sucuri.net\\/warnings\\/hardening\\/headers-x-content-type\"]],\"LINKS\":{\"JSEXTERNAL\":[\"https:\\/\\/ajax.googleapis.com\\/ajax\\/libs\\/jquery\\/2.2.4\\/jquery.min.js?ver=2.2.4\",\"https:\\/\\/ajax.googleapis.com\\/ajax\\/libs\\/jqueryui\\/1.12.1\\/jquery-ui.min.js?ver=1.12.1\"],\"JSLOCAL\":[\"\\/wp-content\\/plugins\\/testimonial-rotator\\/js\\/jquery.cycletwo.js\",\"\\/wp-content\\/plugins\\/testimonial-rotator\\/js\\/jquery.cycletwo.addons.js\",\"\\/wp-content\\/plugins\\/wp-accessibility\\/js\\/longdesc.button.js?ver=1.0\",\"\\/wp-content\\/themes\\/canvas\\/js\\/min\\/scripts.js\",\"\\/wp-includes\\/js\\/wp-embed.min.js\"],\"URL\":[\"\\/contact\\/\",\"\\/about\\/\",\"\\/test\\/\",\"\\/hello-world\\/\",\"\\/2017\\/06\\/\",\"\\/category\\/uncategorized\\/\",\"\\/wp-login.php\",\"\\/feed\\/\",\"\\/comments\\/feed\\/\",\"\\/sample-page\\/\"]},\"BLACKLIST\":{\"INFO\":[[\"Domain clean by Google Safe Browsing: neoninstall.wpengine.com\",\"http:\\/\\/safebrowsing.clients.google.com\\/safebrowsing\\/diagnostic?site=neoninstall.wpengine.com\"],[\"Domain clean by Norton Safe Web: neoninstall.wpengine.com\",\"http:\\/\\/safeweb.norton.com\\/report\\/show?url=neoninstall.wpengine.com\"],[\"Domain clean on PhishTank: neoninstall.wpengine.com\",\"http:\\/\\/www.phishtank.com\\/\"],[\"Domain clean on the Opera browser: neoninstall.wpengine.com\",\"http:\\/\\/opera.com\\/\"],[\"Domain clean by SiteAdvisor: neoninstall.wpengine.com\",\"http:\\/\\/www.siteadvisor.com\\/sites\\/neoninstall.wpengine.com\"],[\"Domain clean by the Sucuri Malware Labs: neoninstall.wpengine.com\",\"http:\\/\\/labs.sucuri.net\\/?blacklist=neoninstall.wpengine.com\"],[\"Domain clean on SpamHaus DBL: neoninstall.wpengine.com\",\"http:\\/\\/www.spamhaus.org\\/query\\/domain\\/neoninstall.wpengine.com\"],[\"Domain clean on Yandex (via Sophos): neoninstall.wpengine.com\",\"http:\\/\\/www.yandex.com\\/infected?url=neoninstall.wpengine.com&amp;l10n=en\"],[\"Domain clean by ESET: neoninstall.wpengine.com\",\"http:\\/\\/labs.sucuri.net\\/?eset\"]]},\"VERSION\":{\"VERSION\":[\"1.4\"],\"BUILDDATE\":[\"21 Feb 2018 02:32 UTC\"],\"DBDATE\":[\"15 Feb 2018 18:59 UTC\"],\"COMPILEDDATE\":[\"20 Feb 2018 23:32 UTC\"]}}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Thu, 08 Mar 2018 22:10:49 GMT\";}s:12:\"content-type\";a:1:{i:0;s:16:\"application/json\";}s:14:\"content-length\";a:1:{i:0;s:4:\"3018\";}s:14:\"x-sucuri-cache\";a:1:{i:0;s:4:\"MISS\";}s:16:\"x-xss-protection\";a:1:{i:0;s:13:\"1; mode=block\";}s:15:\"x-frame-options\";a:1:{i:0;s:10:\"SAMEORIGIN\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:11:\"x-sucuri-id\";a:1:{i:0;s:5:\"11007\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:100:\"https://sitecheck.sucuri.net/?scan=neoninstall.wpengine.com&p=ithemes&clear=1&json=1&time=1520547025\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}}','process-update','2018-03-08 22:10:49','2018-03-08 22:10:25',54959344,55096360,'wp-cron',1,0,'104.196.234.53'),(4,1,'malware','scan','a:1:{s:7:\"results\";a:8:{s:4:\"SCAN\";a:4:{s:4:\"SITE\";a:1:{i:0;s:30:\"http://kaplan2018.wpengine.com\";}s:6:\"DOMAIN\";a:1:{i:0;s:23:\"kaplan2018.wpengine.com\";}s:2:\"IP\";a:1:{i:0;s:14:\"104.196.234.53\";}s:3:\"CMS\";a:1:{i:0;s:9:\"WordPress\";}}s:6:\"SYSTEM\";a:1:{s:6:\"NOTICE\";a:1:{i:0;s:17:\"Running on: nginx\";}}s:6:\"WEBAPP\";a:3:{s:4:\"INFO\";a:1:{i:0;a:2:{i:0;s:22:\"Application: WordPress\";i:1;s:24:\"http://www.wordpress.org\";}}s:7:\"VERSION\";a:2:{i:0;s:36:\"WordPress version from source: 4.9.4\";i:1;s:25:\"WordPress version:  4.9.4\";}s:6:\"NOTICE\";a:1:{i:0;s:74:\"WordPress theme:  http://kaplan2018.wpengine.com/wp-content/themes/canvas/\";}}s:15:\"RECOMMENDATIONS\";a:3:{i:0;a:3:{i:0;s:41:\"Security Header: X-XSS-Protection Missing\";i:1;s:81:\"We did not find the recommended security header for XSS Protection on your site. \";i:2;s:64:\"http://kb.sucuri.net/warnings/hardening/headers-x-xss-protection\";}i:1;a:3:{i:0;s:32:\"Security Header: X-Frame-Options\";i:1;s:90:\"We did not find the recommended security header for ClickJacking Protection on your site. \";i:2;s:68:\"http://kb.sucuri.net/warnings/hardening/headers-x-frame-clickjacking\";}i:2;a:3:{i:0;s:39:\"Security Header: X-Content-Type nosniff\";i:1;s:95:\"We did not find the recommended security header to prevent Content Type sniffing on your site. \";i:2;s:62:\"http://kb.sucuri.net/warnings/hardening/headers-x-content-type\";}}s:5:\"LINKS\";a:3:{s:10:\"JSEXTERNAL\";a:2:{i:0;s:74:\"https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js?ver=2.2.4\";i:1;s:81:\"https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js?ver=1.12.1\";}s:7:\"JSLOCAL\";a:5:{i:0;s:61:\"/wp-content/plugins/testimonial-rotator/js/jquery.cycletwo.js\";i:1;s:68:\"/wp-content/plugins/testimonial-rotator/js/jquery.cycletwo.addons.js\";i:2;s:66:\"/wp-content/plugins/wp-accessibility/js/longdesc.button.js?ver=1.0\";i:3;s:43:\"/wp-content/themes/canvas/js/min/scripts.js\";i:4;s:31:\"/wp-includes/js/wp-embed.min.js\";}s:3:\"URL\";a:10:{i:0;s:9:\"/contact/\";i:1;s:7:\"/about/\";i:2;s:6:\"/test/\";i:3;s:13:\"/hello-world/\";i:4;s:9:\"/2017/06/\";i:5;s:24:\"/category/uncategorized/\";i:6;s:13:\"/wp-login.php\";i:7;s:6:\"/feed/\";i:8;s:15:\"/comments/feed/\";i:9;s:13:\"/sample-page/\";}}s:9:\"BLACKLIST\";a:1:{s:4:\"INFO\";a:9:{i:0;a:2:{i:0;s:61:\"Domain clean by Google Safe Browsing: kaplan2018.wpengine.com\";i:1;s:92:\"http://safebrowsing.clients.google.com/safebrowsing/diagnostic?site=neoninstall.wpengine.com\";}i:1;a:2:{i:0;s:56:\"Domain clean by Norton Safe Web: kaplan2018.wpengine.com\";i:1;s:66:\"http://safeweb.norton.com/report/show?url=neoninstall.wpengine.com\";}i:2;a:2:{i:0;s:50:\"Domain clean on PhishTank: kaplan2018.wpengine.com\";i:1;s:25:\"http://www.phishtank.com/\";}i:3;a:2:{i:0;s:58:\"Domain clean on the Opera browser: kaplan2018.wpengine.com\";i:1;s:17:\"http://opera.com/\";}i:4;a:2:{i:0;s:52:\"Domain clean by SiteAdvisor: kaplan2018.wpengine.com\";i:1;s:57:\"http://www.siteadvisor.com/sites/neoninstall.wpengine.com\";}i:5;a:2:{i:0;s:64:\"Domain clean by the Sucuri Malware Labs: kaplan2018.wpengine.com\";i:1;s:58:\"http://labs.sucuri.net/?blacklist=neoninstall.wpengine.com\";}i:6;a:2:{i:0;s:53:\"Domain clean on SpamHaus DBL: kaplan2018.wpengine.com\";i:1;s:61:\"http://www.spamhaus.org/query/domain/neoninstall.wpengine.com\";}i:7;a:2:{i:0;s:60:\"Domain clean on Yandex (via Sophos): kaplan2018.wpengine.com\";i:1;s:71:\"http://www.yandex.com/infected?url=neoninstall.wpengine.com&amp;l10n=en\";}i:8;a:2:{i:0;s:45:\"Domain clean by ESET: kaplan2018.wpengine.com\";i:1;s:28:\"http://labs.sucuri.net/?eset\";}}}s:7:\"VERSION\";a:4:{s:7:\"VERSION\";a:1:{i:0;s:3:\"1.4\";}s:9:\"BUILDDATE\";a:1:{i:0;s:21:\"21 Feb 2018 02:32 UTC\";}s:6:\"DBDATE\";a:1:{i:0;s:21:\"15 Feb 2018 18:59 UTC\";}s:12:\"COMPILEDDATE\";a:1:{i:0;s:21:\"20 Feb 2018 23:32 UTC\";}}s:6:\"cached\";b:0;}}','process-stop','2018-03-08 22:10:49','2018-03-08 22:10:25',54995536,55182384,'wp-cron',1,0,'104.196.234.53'),(5,0,'malware','clean','a:1:{s:7:\"results\";a:8:{s:4:\"SCAN\";a:4:{s:4:\"SITE\";a:1:{i:0;s:30:\"http://kaplan2018.wpengine.com\";}s:6:\"DOMAIN\";a:1:{i:0;s:23:\"kaplan2018.wpengine.com\";}s:2:\"IP\";a:1:{i:0;s:14:\"104.196.234.53\";}s:3:\"CMS\";a:1:{i:0;s:9:\"WordPress\";}}s:6:\"SYSTEM\";a:1:{s:6:\"NOTICE\";a:1:{i:0;s:17:\"Running on: nginx\";}}s:6:\"WEBAPP\";a:3:{s:4:\"INFO\";a:1:{i:0;a:2:{i:0;s:22:\"Application: WordPress\";i:1;s:24:\"http://www.wordpress.org\";}}s:7:\"VERSION\";a:2:{i:0;s:36:\"WordPress version from source: 4.9.4\";i:1;s:25:\"WordPress version:  4.9.4\";}s:6:\"NOTICE\";a:1:{i:0;s:74:\"WordPress theme:  http://kaplan2018.wpengine.com/wp-content/themes/canvas/\";}}s:15:\"RECOMMENDATIONS\";a:3:{i:0;a:3:{i:0;s:41:\"Security Header: X-XSS-Protection Missing\";i:1;s:81:\"We did not find the recommended security header for XSS Protection on your site. \";i:2;s:64:\"http://kb.sucuri.net/warnings/hardening/headers-x-xss-protection\";}i:1;a:3:{i:0;s:32:\"Security Header: X-Frame-Options\";i:1;s:90:\"We did not find the recommended security header for ClickJacking Protection on your site. \";i:2;s:68:\"http://kb.sucuri.net/warnings/hardening/headers-x-frame-clickjacking\";}i:2;a:3:{i:0;s:39:\"Security Header: X-Content-Type nosniff\";i:1;s:95:\"We did not find the recommended security header to prevent Content Type sniffing on your site. \";i:2;s:62:\"http://kb.sucuri.net/warnings/hardening/headers-x-content-type\";}}s:5:\"LINKS\";a:3:{s:10:\"JSEXTERNAL\";a:2:{i:0;s:74:\"https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js?ver=2.2.4\";i:1;s:81:\"https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js?ver=1.12.1\";}s:7:\"JSLOCAL\";a:5:{i:0;s:61:\"/wp-content/plugins/testimonial-rotator/js/jquery.cycletwo.js\";i:1;s:68:\"/wp-content/plugins/testimonial-rotator/js/jquery.cycletwo.addons.js\";i:2;s:66:\"/wp-content/plugins/wp-accessibility/js/longdesc.button.js?ver=1.0\";i:3;s:43:\"/wp-content/themes/canvas/js/min/scripts.js\";i:4;s:31:\"/wp-includes/js/wp-embed.min.js\";}s:3:\"URL\";a:10:{i:0;s:9:\"/contact/\";i:1;s:7:\"/about/\";i:2;s:6:\"/test/\";i:3;s:13:\"/hello-world/\";i:4;s:9:\"/2017/06/\";i:5;s:24:\"/category/uncategorized/\";i:6;s:13:\"/wp-login.php\";i:7;s:6:\"/feed/\";i:8;s:15:\"/comments/feed/\";i:9;s:13:\"/sample-page/\";}}s:9:\"BLACKLIST\";a:1:{s:4:\"INFO\";a:9:{i:0;a:2:{i:0;s:61:\"Domain clean by Google Safe Browsing: kaplan2018.wpengine.com\";i:1;s:92:\"http://safebrowsing.clients.google.com/safebrowsing/diagnostic?site=neoninstall.wpengine.com\";}i:1;a:2:{i:0;s:56:\"Domain clean by Norton Safe Web: kaplan2018.wpengine.com\";i:1;s:66:\"http://safeweb.norton.com/report/show?url=neoninstall.wpengine.com\";}i:2;a:2:{i:0;s:50:\"Domain clean on PhishTank: kaplan2018.wpengine.com\";i:1;s:25:\"http://www.phishtank.com/\";}i:3;a:2:{i:0;s:58:\"Domain clean on the Opera browser: kaplan2018.wpengine.com\";i:1;s:17:\"http://opera.com/\";}i:4;a:2:{i:0;s:52:\"Domain clean by SiteAdvisor: kaplan2018.wpengine.com\";i:1;s:57:\"http://www.siteadvisor.com/sites/neoninstall.wpengine.com\";}i:5;a:2:{i:0;s:64:\"Domain clean by the Sucuri Malware Labs: kaplan2018.wpengine.com\";i:1;s:58:\"http://labs.sucuri.net/?blacklist=neoninstall.wpengine.com\";}i:6;a:2:{i:0;s:53:\"Domain clean on SpamHaus DBL: kaplan2018.wpengine.com\";i:1;s:61:\"http://www.spamhaus.org/query/domain/neoninstall.wpengine.com\";}i:7;a:2:{i:0;s:60:\"Domain clean on Yandex (via Sophos): kaplan2018.wpengine.com\";i:1;s:71:\"http://www.yandex.com/infected?url=neoninstall.wpengine.com&amp;l10n=en\";}i:8;a:2:{i:0;s:45:\"Domain clean by ESET: kaplan2018.wpengine.com\";i:1;s:28:\"http://labs.sucuri.net/?eset\";}}}s:7:\"VERSION\";a:4:{s:7:\"VERSION\";a:1:{i:0;s:3:\"1.4\";}s:9:\"BUILDDATE\";a:1:{i:0;s:21:\"21 Feb 2018 02:32 UTC\";}s:6:\"DBDATE\";a:1:{i:0;s:21:\"15 Feb 2018 18:59 UTC\";}s:12:\"COMPILEDDATE\";a:1:{i:0;s:21:\"20 Feb 2018 23:32 UTC\";}}s:6:\"cached\";b:0;}}','notice','2018-03-08 22:10:49','2018-03-08 22:10:25',54979200,55182384,'wp-cron',1,0,'104.196.234.53'),(6,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-04-11 19:06:33','2018-04-11 19:06:32',56041480,62411800,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(7,0,'user_logging','post-status-changed::3,12,auto-draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:12;s:10:\"old_status\";s:10:\"auto-draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-04-11 19:06:55','2018-04-11 19:06:54',65877528,66258352,'https://kaplan2018.wpengine.com/wp-admin/post.php',1,3,'73.23.89.171'),(8,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-04-11 19:12:13','2018-04-11 19:12:12',12540856,12908928,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(9,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-04-16 13:49:55','2018-04-16 13:49:55',55066608,55239752,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(10,0,'user_logging','post-status-changed::3,6,publish,trash','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:6;s:10:\"old_status\";s:7:\"publish\";s:10:\"new_status\";s:5:\"trash\";}','notice','2018-04-17 17:53:39','2018-04-17 17:53:38',65704240,65958280,'https://kaplan2018.wpengine.com/wp-admin/edit.php?s=&post_status=all&post_type=page&_wpnonce=d3c3939345&_wp_http_referer=%2Fwp-admin%2Fedit.php%3Fpost_type%3Dpage&action=trash&m=0&seo_filter=&readability_filter=&paged=1&post%5B%5D=6&post%5B%5D=7&post%5B%5D=5&action2=-1',1,3,'73.23.89.171'),(11,0,'user_logging','post-status-changed::3,7,publish,trash','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:7;s:10:\"old_status\";s:7:\"publish\";s:10:\"new_status\";s:5:\"trash\";}','notice','2018-04-17 17:53:39','2018-04-17 17:53:38',65883864,66142080,'https://kaplan2018.wpengine.com/wp-admin/edit.php?s=&post_status=all&post_type=page&_wpnonce=d3c3939345&_wp_http_referer=%2Fwp-admin%2Fedit.php%3Fpost_type%3Dpage&action=trash&m=0&seo_filter=&readability_filter=&paged=1&post%5B%5D=6&post%5B%5D=7&post%5B%5D=5&action2=-1',1,3,'73.23.89.171'),(12,0,'user_logging','post-status-changed::3,5,publish,trash','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:5;s:10:\"old_status\";s:7:\"publish\";s:10:\"new_status\";s:5:\"trash\";}','notice','2018-04-17 17:53:39','2018-04-17 17:53:38',65893408,66155488,'https://kaplan2018.wpengine.com/wp-admin/edit.php?s=&post_status=all&post_type=page&_wpnonce=d3c3939345&_wp_http_referer=%2Fwp-admin%2Fedit.php%3Fpost_type%3Dpage&action=trash&m=0&seo_filter=&readability_filter=&paged=1&post%5B%5D=6&post%5B%5D=7&post%5B%5D=5&action2=-1',1,3,'73.23.89.171'),(13,0,'user_logging','post-status-changed::3,2,publish,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:2;s:10:\"old_status\";s:7:\"publish\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-04-17 17:56:19','2018-04-17 17:56:19',65364936,65606496,'https://kaplan2018.wpengine.com/wp-admin/post.php',1,3,'73.23.89.171'),(14,0,'user_logging','post-status-changed::3,13,new,draft','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:13;s:10:\"old_status\";s:3:\"new\";s:10:\"new_status\";s:5:\"draft\";}','notice','2018-04-17 18:41:29','2018-04-17 18:41:29',63672800,63846592,'https://kaplan2018.wpengine.com/wp-admin/admin-ajax.php',1,3,'73.23.89.171'),(15,0,'user_logging','post-status-changed::3,14,new,draft','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:14;s:10:\"old_status\";s:3:\"new\";s:10:\"new_status\";s:5:\"draft\";}','notice','2018-04-17 18:41:30','2018-04-17 18:41:29',63789984,63988184,'https://kaplan2018.wpengine.com/wp-admin/admin-ajax.php',1,3,'73.23.89.171'),(16,0,'user_logging','post-status-changed::3,13,draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:13;s:10:\"old_status\";s:5:\"draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-04-17 18:41:33','2018-04-17 18:41:33',65344672,65599904,'https://kaplan2018.wpengine.com/wp-admin/nav-menus.php',1,3,'73.23.89.171'),(17,0,'user_logging','post-status-changed::3,14,draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:14;s:10:\"old_status\";s:5:\"draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-04-17 18:41:33','2018-04-17 18:41:33',65467464,65738824,'https://kaplan2018.wpengine.com/wp-admin/nav-menus.php',1,3,'73.23.89.171'),(18,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-04-24 22:43:40','2018-04-24 22:43:40',55019040,55192256,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(19,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-05-18 21:13:39','2018-05-18 21:13:38',59942328,60119304,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(20,0,'user_logging','post-status-changed::3,2,publish,trash','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:2;s:10:\"old_status\";s:7:\"publish\";s:10:\"new_status\";s:5:\"trash\";}','notice','2018-05-18 21:15:20','2018-05-18 21:15:19',66337040,66580856,'https://kaplan2018.wpengine.com/wp-admin/post.php?post=2&action=trash&_wpnonce=0fb0eaf49b',1,3,'73.23.89.171'),(21,0,'user_logging','post-status-changed::3,17,auto-draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:17;s:10:\"old_status\";s:10:\"auto-draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:15:30','2018-05-18 21:15:30',66415760,66658456,'https://kaplan2018.wpengine.com/wp-admin/post.php',1,3,'73.23.89.171'),(22,0,'user_logging','post-status-changed::3,18,auto-draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:18;s:10:\"old_status\";s:10:\"auto-draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:15:40','2018-05-18 21:15:39',66416832,66658936,'https://kaplan2018.wpengine.com/wp-admin/post.php',1,3,'73.23.89.171'),(23,0,'user_logging','post-status-changed::3,19,auto-draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:19;s:10:\"old_status\";s:10:\"auto-draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:15:50','2018-05-18 21:15:49',66416688,66663264,'https://kaplan2018.wpengine.com/wp-admin/post.php',1,3,'73.23.89.171'),(24,0,'user_logging','post-status-changed::3,20,auto-draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:20;s:10:\"old_status\";s:10:\"auto-draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:15:58','2018-05-18 21:15:58',66418320,66661144,'https://kaplan2018.wpengine.com/wp-admin/post.php',1,3,'73.23.89.171'),(25,0,'user_logging','post-status-changed::3,21,auto-draft,draft','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:21;s:10:\"old_status\";s:10:\"auto-draft\";s:10:\"new_status\";s:5:\"draft\";}','notice','2018-05-18 21:16:08','2018-05-18 21:16:08',64498400,64697432,'https://kaplan2018.wpengine.com/wp-admin/admin-ajax.php',1,3,'73.23.89.171'),(26,0,'user_logging','post-status-changed::3,21,draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:21;s:10:\"old_status\";s:5:\"draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:16:11','2018-05-18 21:16:10',66422064,66665336,'https://kaplan2018.wpengine.com/wp-admin/post.php',1,3,'73.23.89.171'),(27,0,'user_logging','post-status-changed::3,22,new,draft','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:22;s:10:\"old_status\";s:3:\"new\";s:10:\"new_status\";s:5:\"draft\";}','notice','2018-05-18 21:17:02','2018-05-18 21:17:01',64831704,65029232,'https://kaplan2018.wpengine.com/wp-admin/admin-ajax.php',1,3,'73.23.89.171'),(28,0,'user_logging','post-status-changed::3,23,new,draft','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:23;s:10:\"old_status\";s:3:\"new\";s:10:\"new_status\";s:5:\"draft\";}','notice','2018-05-18 21:17:02','2018-05-18 21:17:01',64923992,65142440,'https://kaplan2018.wpengine.com/wp-admin/admin-ajax.php',1,3,'73.23.89.171'),(29,0,'user_logging','post-status-changed::3,24,new,draft','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:24;s:10:\"old_status\";s:3:\"new\";s:10:\"new_status\";s:5:\"draft\";}','notice','2018-05-18 21:17:02','2018-05-18 21:17:01',64929384,65154328,'https://kaplan2018.wpengine.com/wp-admin/admin-ajax.php',1,3,'73.23.89.171'),(30,0,'user_logging','post-status-changed::3,25,new,draft','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:25;s:10:\"old_status\";s:3:\"new\";s:10:\"new_status\";s:5:\"draft\";}','notice','2018-05-18 21:17:02','2018-05-18 21:17:01',64934712,65160056,'https://kaplan2018.wpengine.com/wp-admin/admin-ajax.php',1,3,'73.23.89.171'),(31,0,'user_logging','post-status-changed::3,26,new,draft','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:26;s:10:\"old_status\";s:3:\"new\";s:10:\"new_status\";s:5:\"draft\";}','notice','2018-05-18 21:17:02','2018-05-18 21:17:01',64940040,65165584,'https://kaplan2018.wpengine.com/wp-admin/admin-ajax.php',1,3,'73.23.89.171'),(32,0,'user_logging','post-status-changed::3,26,draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:26;s:10:\"old_status\";s:5:\"draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:17:14','2018-05-18 21:17:13',66565720,66824240,'https://kaplan2018.wpengine.com/wp-admin/nav-menus.php',1,3,'73.23.89.171'),(33,0,'user_logging','post-status-changed::3,25,draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:25;s:10:\"old_status\";s:5:\"draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:17:14','2018-05-18 21:17:13',66790464,67115640,'https://kaplan2018.wpengine.com/wp-admin/nav-menus.php',1,3,'73.23.89.171'),(34,0,'user_logging','post-status-changed::3,24,draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:24;s:10:\"old_status\";s:5:\"draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:17:14','2018-05-18 21:17:13',66805728,67115640,'https://kaplan2018.wpengine.com/wp-admin/nav-menus.php',1,3,'73.23.89.171'),(35,0,'user_logging','post-status-changed::3,23,draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:23;s:10:\"old_status\";s:5:\"draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:17:14','2018-05-18 21:17:13',66821056,67115640,'https://kaplan2018.wpengine.com/wp-admin/nav-menus.php',1,3,'73.23.89.171'),(36,0,'user_logging','post-status-changed::3,22,draft,publish','a:4:{s:7:\"user_id\";i:3;s:7:\"post_id\";i:22;s:10:\"old_status\";s:5:\"draft\";s:10:\"new_status\";s:7:\"publish\";}','notice','2018-05-18 21:17:14','2018-05-18 21:17:13',66836304,67120368,'https://kaplan2018.wpengine.com/wp-admin/nav-menus.php',1,3,'73.23.89.171'),(37,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-06-08 17:39:13','2018-06-08 17:39:13',60646448,60823664,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(38,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-06-11 16:24:52','2018-06-11 16:24:52',60639688,60816432,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(39,0,'brute_force','invalid-login','a:5:{s:7:\"details\";a:2:{s:6:\"source\";s:12:\"wp-login.php\";s:20:\"authentication_types\";a:1:{i:0;s:21:\"username_and_password\";}}s:4:\"user\";O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:18:\"incorrect_password\";a:1:{i:0;s:203:\"<strong>ERROR</strong>: The password you entered for the username <strong>trenton</strong> is incorrect. <a href=\"https://kaplan2018.wpengine.com/wp-login.php?action=lostpassword\">Lost your password?</a>\";}}s:10:\"error_data\";a:0:{}}s:8:\"username\";s:7:\"trenton\";s:7:\"user_id\";i:3;s:6:\"SERVER\";a:52:{s:15:\"SERVER_SOFTWARE\";s:6:\"Apache\";s:11:\"REQUEST_URI\";s:28:\"/wp-login.php?wpe-login=true\";s:5:\"HTTPS\";s:2:\"on\";s:6:\"IS_WPE\";s:1:\"1\";s:18:\"WPE_CAN_WRITE_DISK\";s:1:\"0\";s:20:\"WPENGINE_PHPSESSIONS\";s:2:\"on\";s:27:\"WPE_HEARTBEAT_AUTOSAVE_ONLY\";s:2:\"on\";s:31:\"WPENGINE_FORCE_STRONG_PASSWORDS\";s:2:\"on\";s:30:\"WPENGINE_CLEAR_EXPIRED_COOKIES\";s:3:\"off\";s:16:\"WPENGINE_ACCOUNT\";s:11:\"neoninstall\";s:24:\"WPENGINE_SESSION_LOCKING\";s:2:\"on\";s:9:\"HTTP_HOST\";s:23:\"kaplan2018.wpengine.com\";s:13:\"HTTP_X_LB_KEY\";s:11:\"neoninstall\";s:13:\"HTTP_X_IS_BOT\";s:1:\"0\";s:15:\"HTTP_USER_AGENT\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:21:\"HTTP_X_FORWARDED_HOST\";s:23:\"kaplan2018.wpengine.com\";s:14:\"HTTP_X_WPE_SSL\";s:1:\"1\";s:17:\"HTTP_WPE_READONLY\";s:2:\"on\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:14:\"CONTENT_LENGTH\";s:3:\"147\";s:21:\"HTTP_CF_CONNECTING_IP\";s:12:\"73.23.89.171\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:5:\"https\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ORIGIN\";s:31:\"https://kaplan2018.wpengine.com\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:11:\"HTTP_ACCEPT\";s:85:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8\";s:12:\"HTTP_REFERER\";s:118:\"https://kaplan2018.wpengine.com/wp-login.php?redirect_to=https%3A%2F%2Fneoninstall.wpengine.com%2Fwp-admin%2F&reauth=1\";s:20:\"HTTP_ACCEPT_ENCODING\";s:17:\"gzip, deflate, br\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"en-US,en;q=0.9\";s:11:\"HTTP_COOKIE\";s:2685:\"_ga=GA1.2.158126361.1525361060; __lc.visitor_id.g2819642_5.group5=S1525361088.0b8e7eb24c; __cfduid=d769b79d4d0ffa470baa7fad600e686d21525367782; __lc.visitor_id.g7036871_357.group357=S1525700280.d64950229d; __lc.visitor_id.g7036871_0=S1528213073.42442af16b; __utmzz=utmcsr=google|utmcmd=organic|utmccn=(not set)|utmctr=(not provided); _gaexp=GAX1.2.sTSVehJrQui5iHpI9UqtUw.17739.1!hhYhSfcARgCdNSOqNHBoUg.17739.1; __qca=P0-1040774920-1528404204715; __lc.visitor_id.2819642=S1528404204.2f9cc57f7d; hubspotutk=6155c6d132c29e198347704702a68717; __utmzzses=1; portal_user=%7B%22partner%22%3Afalse%2C%22plan%22%3A%22premium%22%7D; lc_window_state.group5=full; wordpress_test_cookie=WP+Cookie+check; _bcvm_vrid_435750149709434767=435754022207454493TE0068DE652B1AA739E824393712325C6963FA6BCC91A6C0785EB294C849493522857007086A8BBDC5AEE69398C0DA88C85B8CBDA397ACB793B9E7C81CA81FEE1; _bcvm_vid_435750149709434767=435754035174443349T22684DFD5AD522F5E943B927076405F3511CEF6E2A3AE95CCC827EF4001298B517D8E1455195AD03D83B98BCB05BC3816C7D2798F23512EBA5815FBE6118E6E6; wp-settings-time-3=1528734303; _gid=GA1.2.1318436757.1528757089; _bcvm_vrid_435736114184313976=435737614035329863T1935A3DBB28D6E430E4B70340E2FC23CC198BDE76F28D00C29849B34610609218B1F0D74C62A0C08755833A265125D302B4B6AF7A859FA5B9E14846C62E35B62; _bcvm_vid_435736114184313976=435754948660758023TB9689C81F85EA94CD8F40CF9C15AC9E07998A55FADDCA064094A1694FAB8F4B81C03FE2FE2BF080E72D05089D37838A7EC974D593FEF675E8987DE78D5E5E6EC; _bc-curl=435754387722636523TC7E602FABE6C3E459FAF80760BEC0AE2AC094828207A052DBFBC166182488ECE11F15BD9763A7F65BC99A91B33D610A4FA10DD9EEFA2B7E103A7386422290F0C:435736115925026441:https%3A%2F%2Flivechat.boldchat.com%2Faid%2F438176494458224912%2Fmobilechat%2Fvisitor.jsp%3Fcid%3D435754387722636523TC7E602FABE6C3E459FAF80760BEC0AE2AC094828207A052DBFBC166182488ECE11F15BD9763A7F65BC99A91B33D610A4FA10DD9EEFA2B7E103A7386422290F0C%26queueToken%3D1528761914626T1D95FCC5D9A36D6BCB6288DC5D9AE215B3BD4599D4E9D8707D96CCF17DB4D7463C848D01A94324180975B1B1051B664E7B60F76636C17E63CA79EBFB1DF93EA7%26wdid%3D435736114184313976%26resize%3Dtrue%267160572259322150934%23hostUrl%3Dhttp%253A%252F%252Flangfordortho.wpengine.com%252Fabout-braces%252F%26issrp%3Dfalse%26pw%3D1639%26po%3D90%26fs%3D14px:true:0:1:0; wpe_is_consent_required=false; lc_sso2819642=1528834211762; __sreff=1528834211252.1528834223127.2; __reff=www.google.com&1528404204214.1528468010923.2|www.google.com&1528834211252.1528834223127.2; __ar_v4=O52ALOLRLRBPBEREO22RZS%3A20180607%3A4%7C5CW3DDC2HFD6PG3HGA4GUM%3A20180607%3A4%7CTAHWBEST55E5TJYIHVPHVJ%3A20180607%3A4; __hstc=51647990.6155c6d132c29e198347704702a68717.1528468012937.1528468012937.1528834231150.2; __hssrc=1\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:0:\"\";s:11:\"SERVER_NAME\";s:23:\"kaplan2018.wpengine.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"73.23.89.171\";s:13:\"DOCUMENT_ROOT\";s:29:\"/nas/wp/www/sites/neoninstall\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:29:\"/nas/wp/www/sites/neoninstall\";s:12:\"SERVER_ADMIN\";s:18:\"[no address given]\";s:15:\"SCRIPT_FILENAME\";s:42:\"/nas/wp/www/sites/neoninstall/wp-login.php\";s:11:\"REMOTE_PORT\";s:5:\"24464\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:14:\"wpe-login=true\";s:11:\"SCRIPT_NAME\";s:13:\"/wp-login.php\";s:8:\"PHP_SELF\";s:13:\"/wp-login.php\";s:18:\"REQUEST_TIME_FLOAT\";s:13:\"1528995625.81\";s:12:\"REQUEST_TIME\";s:10:\"1528995625\";}}','notice','2018-06-14 17:00:26','2018-06-14 17:00:26',61129640,61337160,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(40,0,'brute_force','invalid-login','a:5:{s:7:\"details\";a:2:{s:6:\"source\";s:12:\"wp-login.php\";s:20:\"authentication_types\";a:1:{i:0;s:21:\"username_and_password\";}}s:4:\"user\";O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:18:\"incorrect_password\";a:1:{i:0;s:203:\"<strong>ERROR</strong>: The password you entered for the username <strong>trenton</strong> is incorrect. <a href=\"https://kaplan2018.wpengine.com/wp-login.php?action=lostpassword\">Lost your password?</a>\";}}s:10:\"error_data\";a:0:{}}s:8:\"username\";s:7:\"trenton\";s:7:\"user_id\";i:3;s:6:\"SERVER\";a:52:{s:15:\"SERVER_SOFTWARE\";s:6:\"Apache\";s:11:\"REQUEST_URI\";s:28:\"/wp-login.php?wpe-login=true\";s:5:\"HTTPS\";s:2:\"on\";s:6:\"IS_WPE\";s:1:\"1\";s:18:\"WPE_CAN_WRITE_DISK\";s:1:\"0\";s:20:\"WPENGINE_PHPSESSIONS\";s:2:\"on\";s:27:\"WPE_HEARTBEAT_AUTOSAVE_ONLY\";s:2:\"on\";s:31:\"WPENGINE_FORCE_STRONG_PASSWORDS\";s:2:\"on\";s:30:\"WPENGINE_CLEAR_EXPIRED_COOKIES\";s:3:\"off\";s:16:\"WPENGINE_ACCOUNT\";s:11:\"neoninstall\";s:24:\"WPENGINE_SESSION_LOCKING\";s:2:\"on\";s:9:\"HTTP_HOST\";s:23:\"kaplan2018.wpengine.com\";s:13:\"HTTP_X_LB_KEY\";s:11:\"neoninstall\";s:13:\"HTTP_X_IS_BOT\";s:1:\"0\";s:15:\"HTTP_USER_AGENT\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:21:\"HTTP_X_FORWARDED_HOST\";s:23:\"kaplan2018.wpengine.com\";s:14:\"HTTP_X_WPE_SSL\";s:1:\"1\";s:17:\"HTTP_WPE_READONLY\";s:2:\"on\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:14:\"CONTENT_LENGTH\";s:3:\"147\";s:21:\"HTTP_CF_CONNECTING_IP\";s:12:\"73.23.89.171\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:5:\"https\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ORIGIN\";s:31:\"https://kaplan2018.wpengine.com\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:11:\"HTTP_ACCEPT\";s:85:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8\";s:12:\"HTTP_REFERER\";s:59:\"https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true\";s:20:\"HTTP_ACCEPT_ENCODING\";s:17:\"gzip, deflate, br\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"en-US,en;q=0.9\";s:11:\"HTTP_COOKIE\";s:2685:\"_ga=GA1.2.158126361.1525361060; __lc.visitor_id.g2819642_5.group5=S1525361088.0b8e7eb24c; __cfduid=d769b79d4d0ffa470baa7fad600e686d21525367782; __lc.visitor_id.g7036871_357.group357=S1525700280.d64950229d; __lc.visitor_id.g7036871_0=S1528213073.42442af16b; __utmzz=utmcsr=google|utmcmd=organic|utmccn=(not set)|utmctr=(not provided); _gaexp=GAX1.2.sTSVehJrQui5iHpI9UqtUw.17739.1!hhYhSfcARgCdNSOqNHBoUg.17739.1; __qca=P0-1040774920-1528404204715; __lc.visitor_id.2819642=S1528404204.2f9cc57f7d; hubspotutk=6155c6d132c29e198347704702a68717; __utmzzses=1; portal_user=%7B%22partner%22%3Afalse%2C%22plan%22%3A%22premium%22%7D; lc_window_state.group5=full; wordpress_test_cookie=WP+Cookie+check; _bcvm_vrid_435750149709434767=435754022207454493TE0068DE652B1AA739E824393712325C6963FA6BCC91A6C0785EB294C849493522857007086A8BBDC5AEE69398C0DA88C85B8CBDA397ACB793B9E7C81CA81FEE1; _bcvm_vid_435750149709434767=435754035174443349T22684DFD5AD522F5E943B927076405F3511CEF6E2A3AE95CCC827EF4001298B517D8E1455195AD03D83B98BCB05BC3816C7D2798F23512EBA5815FBE6118E6E6; wp-settings-time-3=1528734303; _gid=GA1.2.1318436757.1528757089; _bcvm_vrid_435736114184313976=435737614035329863T1935A3DBB28D6E430E4B70340E2FC23CC198BDE76F28D00C29849B34610609218B1F0D74C62A0C08755833A265125D302B4B6AF7A859FA5B9E14846C62E35B62; _bcvm_vid_435736114184313976=435754948660758023TB9689C81F85EA94CD8F40CF9C15AC9E07998A55FADDCA064094A1694FAB8F4B81C03FE2FE2BF080E72D05089D37838A7EC974D593FEF675E8987DE78D5E5E6EC; _bc-curl=435754387722636523TC7E602FABE6C3E459FAF80760BEC0AE2AC094828207A052DBFBC166182488ECE11F15BD9763A7F65BC99A91B33D610A4FA10DD9EEFA2B7E103A7386422290F0C:435736115925026441:https%3A%2F%2Flivechat.boldchat.com%2Faid%2F438176494458224912%2Fmobilechat%2Fvisitor.jsp%3Fcid%3D435754387722636523TC7E602FABE6C3E459FAF80760BEC0AE2AC094828207A052DBFBC166182488ECE11F15BD9763A7F65BC99A91B33D610A4FA10DD9EEFA2B7E103A7386422290F0C%26queueToken%3D1528761914626T1D95FCC5D9A36D6BCB6288DC5D9AE215B3BD4599D4E9D8707D96CCF17DB4D7463C848D01A94324180975B1B1051B664E7B60F76636C17E63CA79EBFB1DF93EA7%26wdid%3D435736114184313976%26resize%3Dtrue%267160572259322150934%23hostUrl%3Dhttp%253A%252F%252Flangfordortho.wpengine.com%252Fabout-braces%252F%26issrp%3Dfalse%26pw%3D1639%26po%3D90%26fs%3D14px:true:0:1:0; wpe_is_consent_required=false; lc_sso2819642=1528834211762; __sreff=1528834211252.1528834223127.2; __reff=www.google.com&1528404204214.1528468010923.2|www.google.com&1528834211252.1528834223127.2; __ar_v4=O52ALOLRLRBPBEREO22RZS%3A20180607%3A4%7C5CW3DDC2HFD6PG3HGA4GUM%3A20180607%3A4%7CTAHWBEST55E5TJYIHVPHVJ%3A20180607%3A4; __hstc=51647990.6155c6d132c29e198347704702a68717.1528468012937.1528468012937.1528834231150.2; __hssrc=1\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:0:\"\";s:11:\"SERVER_NAME\";s:23:\"kaplan2018.wpengine.com\";s:11:\"SERVER_ADDR\";s:9:\"127.0.0.1\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"73.23.89.171\";s:13:\"DOCUMENT_ROOT\";s:29:\"/nas/wp/www/sites/neoninstall\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:29:\"/nas/wp/www/sites/neoninstall\";s:12:\"SERVER_ADMIN\";s:18:\"[no address given]\";s:15:\"SCRIPT_FILENAME\";s:42:\"/nas/wp/www/sites/neoninstall/wp-login.php\";s:11:\"REMOTE_PORT\";s:5:\"24487\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.0\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:14:\"wpe-login=true\";s:11:\"SCRIPT_NAME\";s:13:\"/wp-login.php\";s:8:\"PHP_SELF\";s:13:\"/wp-login.php\";s:18:\"REQUEST_TIME_FLOAT\";s:13:\"1528995634.62\";s:12:\"REQUEST_TIME\";s:10:\"1528995634\";}}','notice','2018-06-14 17:00:35','2018-06-14 17:00:34',61128768,61336216,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(41,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-06-14 17:00:46','2018-06-14 17:00:45',61225864,61403224,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(42,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-08-09 22:26:01','2018-08-09 22:26:00',61403768,61581088,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(43,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-08-16 21:20:14','2018-08-16 21:20:13',60994536,61170784,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171'),(44,0,'user_logging','user-logged-in::3','a:1:{s:7:\"user_id\";i:3;}','notice','2018-08-23 16:59:17','2018-08-23 16:59:17',61001512,61177056,'https://kaplan2018.wpengine.com/wp-login.php?wpe-login=true',1,0,'73.23.89.171');
/*!40000 ALTER TABLE `wp_itsec_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_itsec_temp`
--

DROP TABLE IF EXISTS `wp_itsec_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_itsec_temp` (
  `temp_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `temp_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `temp_user` bigint(20) unsigned DEFAULT NULL,
  `temp_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`temp_id`),
  KEY `temp_date_gmt` (`temp_date_gmt`),
  KEY `temp_host` (`temp_host`),
  KEY `temp_user` (`temp_user`),
  KEY `temp_username` (`temp_username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_itsec_temp`
--

LOCK TABLES `wp_itsec_temp` WRITE;
/*!40000 ALTER TABLE `wp_itsec_temp` DISABLE KEYS */;
INSERT INTO `wp_itsec_temp` VALUES (1,'brute_force','2018-06-14 17:00:26','2018-06-14 17:00:26','73.23.89.171',NULL,NULL),(2,'brute_force','2018-06-14 17:00:26','2018-06-14 17:00:26',NULL,3,'trenton'),(3,'brute_force','2018-06-14 17:00:34','2018-06-14 17:00:34','73.23.89.171',NULL,NULL),(4,'brute_force','2018-06-14 17:00:34','2018-06-14 17:00:34',NULL,3,'trenton');
/*!40000 ALTER TABLE `wp_itsec_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `wpe_autoload_options_index` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1392 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://kaplan2018.wpengine.com','yes'),(2,'home','http://kaplan2018.wpengine.com','yes'),(3,'blogname','Alex Rasmussen Blog','yes'),(4,'blogdescription','Your SUPER-powered WP Engine Blog','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','alex@neoncanvas.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%postname%/','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:13:{i:0;s:29:\"gravityforms/gravityforms.php\";i:1;s:33:\"404-redirected/404-redirected.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:24:\"bb-plugin/fl-builder.php\";i:4;s:39:\"custom-permalinks/custom-permalinks.php\";i:5;s:55:\"google-pagespeed-insights/google-pagespeed-insights.php\";i:6;s:45:\"ithemes-security-pro/ithemes-security-pro.php\";i:7;s:49:\"read-more-excerpt-link/read-more-excerpt-link.php\";i:9;s:37:\"username-changer/username-changer.php\";i:10;s:25:\"widget-options/plugin.php\";i:11;s:24:\"wordpress-seo/wp-seo.php\";i:13;s:27:\"wp-optimize/wp-optimize.php\";i:14;s:27:\"wp-pagenavi/wp-pagenavi.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','canvas','yes'),(41,'stylesheet','canvas','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','page','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:0:{}','yes'),(80,'widget_rss','a:0:{}','yes'),(81,'uninstall_plugins','a:5:{s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:30:\"ewww_image_optimizer_uninstall\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";s:55:\"google-pagespeed-insights/google-pagespeed-insights.php\";a:2:{i:0;s:13:\"GPI_Uninstall\";i:1;s:9:\"uninstall\";}s:27:\"wp-optimize/wp-optimize.php\";s:21:\"wpo_uninstall_actions\";s:45:\"ithemes-security-pro/ithemes-security-pro.php\";a:2:{i:0;s:10:\"ITSEC_Core\";i:1;s:16:\"handle_uninstall\";}}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','12','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'initial_db_version','38590','yes'),(92,'wp_user_roles','a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:65:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"cp_view_post_permalinks\";b:1;s:27:\"cp_view_category_permalinks\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:25:\"custom_permalinks_manager\";a:2:{s:4:\"name\";s:25:\"Custom Permalinks Manager\";s:12:\"capabilities\";a:2:{s:23:\"cp_view_post_permalinks\";b:1;s:27:\"cp_view_category_permalinks\";b:1;}}}','yes'),(93,'fresh_site','0','yes'),(94,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(99,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(100,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'cron','a:14:{i:1535043925;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535046040;a:1:{s:26:\"wbz404_duplicateCronAction\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535046044;a:1:{s:20:\"blc_cron_check_links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535056783;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1535060578;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535086505;a:1:{s:15:\"itsec_cron_test\";a:1:{s:32:\"3ab31efc9ea205a49d06d942d0373843\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:1535086505;}}}}i:1535119157;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535120831;a:1:{s:14:\"gpi_prune_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535120832;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535121640;a:2:{s:24:\"wbz404_cleanupCronAction\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"itsec_purge_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535121642;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535121644;a:1:{s:28:\"blc_cron_email_notifications\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535125567;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(109,'widget_wpe_powered_by_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'theme_mods_twentyseventeen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1498833623;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(113,'wpe_notices','a:1:{s:4:\"read\";s:0:\"\";}','yes'),(114,'wpe_notices_ttl','1535047159','yes'),(115,'can_compress_scripts','0','no'),(116,'recently_activated','a:1:{s:37:\"wp-accessibility/wp-accessibility.php\";i:1535043604;}','yes'),(117,'username_changer_settings','a:0:{}','yes'),(118,'current_theme','Canvas','yes'),(119,'theme_mods_twentysixteen','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1498833626;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(120,'theme_switched','','yes'),(121,'theme_mods_canvas','a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}}','yes'),(123,'wsblc_options','{\"max_execution_time\":420,\"check_threshold\":72,\"recheck_count\":3,\"recheck_threshold\":1800,\"run_in_dashboard\":true,\"run_via_cron\":true,\"mark_broken_links\":true,\"broken_link_css\":\".broken_link, a.broken_link {\\n\\ttext-decoration: line-through;\\n}\",\"nofollow_broken_links\":false,\"mark_removed_links\":false,\"removed_link_css\":\".removed_link, a.removed_link {\\n\\ttext-decoration: line-through;\\n}\",\"exclusion_list\":[],\"send_email_notifications\":true,\"send_authors_email_notifications\":false,\"notification_email_address\":\"\",\"notification_schedule\":\"daily\",\"last_notification_sent\":0,\"suggestions_enabled\":true,\"warnings_enabled\":true,\"server_load_limit\":null,\"enable_load_limit\":false,\"custom_fields\":[],\"enabled_post_statuses\":[\"publish\"],\"autoexpand_widget\":true,\"dashboard_widget_capability\":\"edit_others_posts\",\"show_link_count_bubble\":true,\"table_layout\":\"flexible\",\"table_compact\":true,\"table_visible_columns\":[\"new-url\",\"status\",\"used-in\",\"new-link-text\"],\"table_links_per_page\":30,\"table_color_code_status\":true,\"need_resynch\":false,\"current_db_version\":9,\"timeout\":30,\"highlight_permanent_failures\":false,\"failure_duration_threshold\":3,\"logging_enabled\":false,\"log_file\":\"\",\"custom_log_file_enabled\":false,\"installation_complete\":true,\"installation_flag_cleared_on\":\"2017-06-30T14:40:38+00:00 (1498833638.92)\",\"installation_flag_set_on\":\"2017-06-30T14:40:39+00:00 (1498833639.87)\",\"user_has_donated\":false,\"donation_flag_fixed\":false,\"show_link_actions\":{\"blc-deredirect-action\":false},\"first_installation_timestamp\":1498833638,\"active_modules\":{\"http\":{\"ModuleID\":\"http\",\"ModuleCategory\":\"checker\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcHttpChecker\",\"ModulePriority\":-1,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"Basic HTTP\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Check all links that have the HTTP\\/HTTPS protocol.\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Basic HTTP\",\"AuthorName\":\"Janis Elsts\",\"file\":\"checkers\\/http.php\"},\"link\":{\"ModuleID\":\"link\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcHTMLLink\",\"ModulePriority\":1000,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"HTML links\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Example : <code>&lt;a href=\\\"http:\\/\\/example.com\\/\\\"&gt;link text&lt;\\/a&gt;<\\/code>\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"HTML links\",\"AuthorName\":\"Janis Elsts\",\"file\":\"parsers\\/html_link.php\"},\"image\":{\"ModuleID\":\"image\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcHTMLImage\",\"ModulePriority\":900,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"HTML images\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"e.g. <code>&lt;img src=\\\"http:\\/\\/example.com\\/fluffy.jpg\\\"&gt;<\\/code>\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"HTML images\",\"AuthorName\":\"Janis Elsts\",\"file\":\"parsers\\/image.php\"},\"metadata\":{\"ModuleID\":\"metadata\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcMetadataParser\",\"ModulePriority\":0,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":true,\"ModuleAlwaysActive\":true,\"ModuleRequiresPro\":false,\"Name\":\"Metadata\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Parses metadata (AKA custom fields)\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Metadata\",\"AuthorName\":\"Janis Elsts\",\"file\":\"parsers\\/metadata.php\"},\"url_field\":{\"ModuleID\":\"url_field\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcUrlField\",\"ModulePriority\":0,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":true,\"ModuleAlwaysActive\":true,\"ModuleRequiresPro\":false,\"Name\":\"URL fields\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Parses data fields that contain a single, plaintext URL.\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"URL fields\",\"AuthorName\":\"Janis Elsts\",\"file\":\"parsers\\/url_field.php\"},\"comment\":{\"ModuleID\":\"comment\",\"ModuleCategory\":\"container\",\"ModuleContext\":\"all\",\"ModuleLazyInit\":false,\"ModuleClassName\":\"blcCommentManager\",\"ModulePriority\":0,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"Comments\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Comments\",\"AuthorName\":\"Janis Elsts\",\"file\":\"containers\\/comment.php\"},\"post\":{\"Name\":\"Posts\",\"ModuleCategory\":\"container\",\"ModuleContext\":\"all\",\"ModuleClassName\":\"blcAnyPostContainerManager\",\"ModuleID\":\"post\",\"file\":\"\",\"ModuleLazyInit\":false,\"ModulePriority\":0,\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"TextDomain\":\"broken-link-checker\",\"virtual\":true},\"page\":{\"Name\":\"Pages\",\"ModuleCategory\":\"container\",\"ModuleContext\":\"all\",\"ModuleClassName\":\"blcAnyPostContainerManager\",\"ModuleID\":\"page\",\"file\":\"\",\"ModuleLazyInit\":false,\"ModulePriority\":0,\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"TextDomain\":\"broken-link-checker\",\"virtual\":true},\"youtube-checker\":{\"ModuleID\":\"youtube-checker\",\"ModuleCategory\":\"checker\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcYouTubeChecker\",\"ModulePriority\":100,\"ModuleCheckerUrlPattern\":\"@^https?:\\/\\/(?:([\\\\w\\\\d]+\\\\.)*youtube\\\\.[^\\/]+\\/watch\\\\?.*v=[^\\/#]|youtu\\\\.be\\/[^\\/#\\\\?]+|(?:[\\\\w\\\\d]+\\\\.)*?youtube\\\\.[^\\/]+\\/(playlist|view_play_list)\\\\?[^\\/#]{15,}?)@i\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"YouTube API\",\"PluginURI\":\"\",\"Version\":\"3\",\"Description\":\"Check links to YouTube videos and playlists using the YouTube API.\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"YouTube API\",\"AuthorName\":\"Janis Elsts\",\"file\":\"extras\\/youtube.php\"},\"youtube-iframe\":{\"ModuleID\":\"youtube-iframe\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcYouTubeIframe\",\"ModulePriority\":120,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"Embedded YouTube videos\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Parse embedded videos from YouTube\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Embedded YouTube videos\",\"AuthorName\":\"Janis Elsts\",\"file\":\"extras\\/youtube-iframe.php\"},\"dummy\":{\"ModuleID\":\"dummy\",\"ModuleCategory\":\"container\",\"ModuleContext\":\"all\",\"ModuleLazyInit\":false,\"ModuleClassName\":\"blcDummyManager\",\"ModulePriority\":0,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":true,\"ModuleAlwaysActive\":true,\"ModuleRequiresPro\":false,\"Name\":\"Dummy\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Dummy\",\"AuthorName\":\"Janis Elsts\",\"file\":\"containers\\/dummy.php\"}},\"module_deactivated_when\":{\"custom_field\":1498833638}}','yes'),(124,'blc_installation_log','a:63:{i:0;a:3:{i:0;i:1;i:1;s:40:\"Plugin activated at 2017-06-30 14:40:38.\";i:2;N;}i:1;a:3:{i:0;i:1;i:1;s:27:\"Installation/update begins.\";i:2;N;}i:2;a:3:{i:0;i:1;i:1;s:25:\"Upgrading the database...\";i:2;N;}i:3;a:3:{i:0;i:1;i:1;s:31:\"... SHOW TABLES (0.001 seconds)\";i:2;N;}i:4;a:3:{i:0;i:1;i:1;s:272:\" [OK] 	\r\n	CREATE TABLE IF NOT EXISTS `wp_blc_filters` (\r\n		`id` int(10) unsigned NOT NULL AUTO_INCREMENT,\r\n		`name` varchar(100) NOT NULL,\r\n		`params` text NOT NULL,\r\n		\r\n		PRIMARY KEY (`id`)\r\n	) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci (0.015 seconds)\";i:2;N;}i:5;a:3:{i:0;i:1;i:1;s:731:\" [OK] \r\n	\r\n	CREATE TABLE IF NOT EXISTS `wp_blc_instances` (\r\n		`instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,\r\n		`link_id` int(10) unsigned NOT NULL,\r\n		`container_id` int(10) unsigned NOT NULL,\r\n		`container_type` varchar(40) NOT NULL DEFAULT \'post\',\r\n		`link_text` text NOT NULL DEFAULT \'\',\r\n		`parser_type` varchar(40) NOT NULL DEFAULT \'link\',\r\n		`container_field` varchar(250) NOT NULL DEFAULT \'\',\r\n		`link_context` varchar(250) NOT NULL DEFAULT \'\',\r\n		`raw_url` text NOT NULL,\r\n		  \r\n		PRIMARY KEY (`instance_id`),\r\n		KEY `link_id` (`link_id`),\r\n		KEY `source_id` (`container_type`, `container_id`),\r\n		KEY `parser_type` (`parser_type`)\r\n	) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci (0.027 seconds)\";i:2;N;}i:6;a:3:{i:0;i:1;i:1;s:1505:\" [OK] \r\n	\r\n	CREATE TABLE IF NOT EXISTS `wp_blc_links` (\r\n		`link_id` int(20) unsigned NOT NULL AUTO_INCREMENT,\r\n		`url` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,\r\n		`first_failure` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',\r\n		`last_check` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',\r\n		`last_success` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',\r\n		`last_check_attempt` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',\r\n		`check_count` int(4) unsigned NOT NULL DEFAULT \'0\',\r\n		`final_url` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,\r\n		`redirect_count` smallint(5) unsigned NOT NULL DEFAULT \'0\',\r\n		`log` text NOT NULL,\r\n		`http_code` smallint(6) NOT NULL DEFAULT \'0\',\r\n		`status_code` varchar(100) DEFAULT \'\',\r\n		`status_text` varchar(250) DEFAULT \'\',\r\n		`request_duration` float NOT NULL DEFAULT \'0\',\r\n		`timeout` tinyint(1) unsigned NOT NULL DEFAULT \'0\',\r\n		`broken` tinyint(1) unsigned NOT NULL DEFAULT \'0\',\r\n		`warning` tinyint(1) unsigned NOT NULL DEFAULT \'0\',\r\n		`may_recheck` tinyint(1) NOT NULL DEFAULT \'1\',\r\n		`being_checked` tinyint(1) NOT NULL DEFAULT \'0\',\r\n\r\n		`result_hash` varchar(200) NOT NULL DEFAULT \'\',\r\n		`false_positive` tinyint(1) NOT NULL DEFAULT \'0\',\r\n		`dismissed` tinyint(1) NOT NULL DEFAULT \'0\',\r\n		\r\n		PRIMARY KEY (`link_id`),\r\n		KEY `url` (`url`(150)),\r\n		KEY `final_url` (`final_url`(150)),\r\n		KEY `http_code` (`http_code`),\r\n		KEY `broken` (`broken`)\r\n	) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci (0.078 seconds)\";i:2;N;}i:7;a:3:{i:0;i:1;i:1;s:414:\" [OK] \r\n	\r\n	CREATE TABLE IF NOT EXISTS `wp_blc_synch` (\r\n		`container_id` int(20) unsigned NOT NULL,\r\n		`container_type` varchar(40) NOT NULL,\r\n		`synched` tinyint(2) unsigned NOT NULL,\r\n		`last_synch` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',\r\n		\r\n		PRIMARY KEY (`container_type`,`container_id`),\r\n		KEY `synched` (`synched`)\r\n	) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci (0.046 seconds)\";i:2;N;}i:8;a:3:{i:0;i:1;i:1;s:32:\"Schema update took 0.166 seconds\";i:2;N;}i:9;a:3:{i:0;i:1;i:1;s:24:\"Database schema updated.\";i:2;N;}i:10;a:3:{i:0;i:1;i:1;s:31:\"Database successfully upgraded.\";i:2;N;}i:11;a:3:{i:0;i:1;i:1;s:24:\"--- Total: 0.172 seconds\";i:2;N;}i:12;a:3:{i:0;i:1;i:1;s:27:\"Cleaning up the database...\";i:2;N;}i:13;a:3:{i:0;i:1;i:1;s:38:\"... Deleting invalid container records\";i:2;N;}i:14;a:3:{i:0;i:0;i:1;s:44:\"... 0 synch records deleted in 0.001 seconds\";i:2;N;}i:15;a:3:{i:0;i:1;i:1;s:35:\"... Deleting invalid link instances\";i:2;N;}i:16;a:3:{i:0;i:0;i:1;s:40:\"... 0 instances deleted in 0.000 seconds\";i:2;N;}i:17;a:3:{i:0;i:0;i:1;s:45:\"... 0 more instances deleted in 0.000 seconds\";i:2;N;}i:18;a:3:{i:0;i:1;i:1;s:27:\"... Deleting orphaned links\";i:2;N;}i:19;a:3:{i:0;i:0;i:1;s:36:\"... 0 links deleted in 0.000 seconds\";i:2;N;}i:20;a:3:{i:0;i:1;i:1;s:24:\"--- Total: 0.002 seconds\";i:2;N;}i:21;a:3:{i:0;i:1;i:1;s:20:\"Notifying modules...\";i:2;N;}i:22;a:3:{i:0;i:0;i:1;s:25:\"... Updating module cache\";i:2;N;}i:23;a:3:{i:0;i:1;i:1;s:36:\"... Cache refresh took 0.000 seconds\";i:2;N;}i:24;a:3:{i:0;i:0;i:1;s:19:\"... Loading modules\";i:2;N;}i:25;a:3:{i:0;i:1;i:1;s:37:\"... 5 modules loaded in 0.001 seconds\";i:2;N;}i:26;a:3:{i:0;i:0;i:1;s:27:\"... Notifying module \"http\"\";i:2;N;}i:27;a:3:{i:0;i:0;i:1;s:27:\"... Notifying module \"link\"\";i:2;N;}i:28;a:3:{i:0;i:0;i:1;s:28:\"... Notifying module \"image\"\";i:2;N;}i:29;a:3:{i:0;i:0;i:1;s:31:\"... Notifying module \"metadata\"\";i:2;N;}i:30;a:3:{i:0;i:0;i:1;s:32:\"... Notifying module \"url_field\"\";i:2;N;}i:31;a:3:{i:0;i:0;i:1;s:30:\"... Notifying module \"comment\"\";i:2;N;}i:32;a:3:{i:0;i:0;i:1;s:51:\"...... Deleting synch. records for removed comments\";i:2;N;}i:33;a:3:{i:0;i:0;i:1;s:38:\"...... 0 rows deleted in 0.000 seconds\";i:2;N;}i:34;a:3:{i:0;i:0;i:1;s:47:\"...... Creating synch. records for new comments\";i:2;N;}i:35;a:3:{i:0;i:0;i:1;s:39:\"...... 1 rows inserted in 0.047 seconds\";i:2;N;}i:36;a:3:{i:0;i:0;i:1;s:27:\"... Notifying module \"post\"\";i:2;N;}i:37;a:3:{i:0;i:0;i:1;s:47:\"...... Deleting synch records for removed posts\";i:2;N;}i:38;a:3:{i:0;i:0;i:1;s:207:\"DELETE synch.*\r\n				  FROM \r\n					 wp_blc_synch AS synch LEFT JOIN wp_posts AS posts\r\n					 ON posts.ID = synch.container_id\r\n				  WHERE \r\n					 synch.container_type IN (\'page\', \'post\') AND posts.ID IS NULL\";i:2;N;}i:39;a:3:{i:0;i:0;i:1;s:38:\"...... 0 rows deleted in 0.000 seconds\";i:2;N;}i:40;a:3:{i:0;i:0;i:1;s:69:\"...... Deleting synch records for posts that have a disallowed status\";i:2;N;}i:41;a:3:{i:0;i:0;i:1;s:232:\"DELETE synch.*\r\n				  FROM\r\n					 wp_blc_synch AS synch\r\n					 LEFT JOIN wp_posts AS posts\r\n					 ON (synch.container_id = posts.ID and synch.container_type = posts.post_type)\r\n				  WHERE\r\n					 posts.post_status NOT IN (\'publish\')\";i:2;N;}i:42;a:3:{i:0;i:0;i:1;s:38:\"...... 0 rows deleted in 0.000 seconds\";i:2;N;}i:43;a:3:{i:0;i:0;i:1;s:41:\"...... Marking changed posts as unsynched\";i:2;N;}i:44;a:3:{i:0;i:0;i:1;s:227:\"UPDATE\r\n					wp_blc_synch AS synch\r\n					JOIN wp_posts AS posts ON (synch.container_id = posts.ID and synch.container_type=posts.post_type)\r\n				  SET \r\n					synched = 0\r\n				  WHERE\r\n					synch.last_synch < posts.post_modified\";i:2;N;}i:45;a:3:{i:0;i:0;i:1;s:38:\"...... 0 rows updated in 0.000 seconds\";i:2;N;}i:46;a:3:{i:0;i:0;i:1;s:43:\"...... Creating synch records for new posts\";i:2;N;}i:47;a:3:{i:0;i:0;i:1;s:400:\"INSERT INTO wp_blc_synch(container_id, container_type, synched)\r\n				  SELECT posts.id, posts.post_type, 0\r\n				  FROM \r\n				    wp_posts AS posts LEFT JOIN wp_blc_synch AS synch\r\n					ON (synch.container_id = posts.ID and synch.container_type=posts.post_type)  \r\n				  WHERE\r\n				  	posts.post_status IN (\'publish\')\r\n	 				AND posts.post_type IN (\'page\', \'post\')\r\n					AND synch.container_id IS NULL\";i:2;N;}i:48;a:3:{i:0;i:0;i:1;s:39:\"...... 0 rows inserted in 0.000 seconds\";i:2;N;}i:49;a:3:{i:0;i:0;i:1;s:27:\"... Notifying module \"page\"\";i:2;N;}i:50;a:3:{i:0;i:0;i:1;s:74:\"...... Skipping \"page\" resyncyh since all post types were already synched.\";i:2;N;}i:51;a:3:{i:0;i:0;i:1;s:38:\"... Notifying module \"youtube-checker\"\";i:2;N;}i:52;a:3:{i:0;i:0;i:1;s:37:\"... Notifying module \"youtube-iframe\"\";i:2;N;}i:53;a:3:{i:0;i:0;i:1;s:28:\"... Notifying module \"dummy\"\";i:2;N;}i:54;a:3:{i:0;i:1;i:1;s:24:\"--- Total: 0.065 seconds\";i:2;N;}i:55;a:3:{i:0;i:1;i:1;s:38:\"Updating server load limit settings...\";i:2;N;}i:56;a:3:{i:0;i:1;i:1;s:57:\"Disable load limit. Cannot retrieve current load average.\";i:2;N;}i:57;a:3:{i:0;i:1;i:1;s:26:\"Optimizing the database...\";i:2;N;}i:58;a:3:{i:0;i:1;i:1;s:24:\"--- Total: 0.642 seconds\";i:2;N;}i:59;a:3:{i:0;i:1;i:1;s:26:\"Completing installation...\";i:2;N;}i:60;a:3:{i:0;i:1;i:1;s:20:\"Configuration saved.\";i:2;N;}i:61;a:3:{i:0;i:1;i:1;s:78:\"Installation/update completed at 2017-06-30 14:40:39 with 24 queries executed.\";i:2;N;}i:62;a:3:{i:0;i:1;i:1;s:25:\"Total time: 0.974 seconds\";i:2;N;}}','yes'),(125,'gpagespeedi_options','a:24:{s:20:\"google_developer_key\";s:0:\"\";s:17:\"response_language\";s:5:\"en_US\";s:8:\"strategy\";s:7:\"desktop\";s:18:\"max_execution_time\";i:300;s:12:\"max_run_time\";i:0;s:10:\"sleep_time\";i:0;s:16:\"recheck_interval\";i:86400;s:12:\"use_schedule\";b:1;s:11:\"check_pages\";b:1;s:11:\"check_posts\";b:1;s:13:\"cpt_whitelist\";s:0:\"\";s:16:\"check_categories\";b:1;s:17:\"check_custom_urls\";b:1;s:18:\"first_run_complete\";b:0;s:17:\"last_run_finished\";b:1;s:11:\"bad_api_key\";b:0;s:18:\"pagespeed_disabled\";b:0;s:15:\"api_restriction\";b:0;s:17:\"new_ignored_items\";b:0;s:13:\"backend_error\";b:0;s:14:\"log_api_errors\";b:0;s:22:\"new_activation_message\";b:0;s:9:\"heartbeat\";s:4:\"fast\";s:7:\"version\";s:5:\"3.0.0\";}','yes'),(126,'gpagespeedi_ui_options','a:2:{s:14:\"action_message\";b:0;s:15:\"view_preference\";s:7:\"desktop\";}','yes'),(127,'manage-multiple-blogs','a:2:{s:5:\"blogs\";a:0:{}s:12:\"current_blog\";a:1:{s:4:\"type\";N;}}','yes'),(137,'rsssl_migrated_htaccess_setting','1','yes'),(138,'wbz404_settings','a:24:{s:16:\"default_redirect\";s:3:\"301\";s:11:\"capture_404\";s:1:\"1\";s:16:\"capture_deletion\";i:1095;s:15:\"manual_deletion\";s:1:\"0\";s:18:\"admin_notification\";s:3:\"200\";s:14:\"remove_matches\";s:1:\"1\";s:15:\"display_suggest\";s:1:\"1\";s:16:\"suggest_minscore\";s:2:\"25\";s:11:\"suggest_max\";s:1:\"5\";s:13:\"suggest_title\";s:31:\"<h3>Suggested Alternatives</h3>\";s:14:\"suggest_before\";s:4:\"<ol>\";s:13:\"suggest_after\";s:5:\"</ol>\";s:19:\"suggest_entrybefore\";s:4:\"<li>\";s:18:\"suggest_entryafter\";s:5:\"</li>\";s:17:\"suggest_noresults\";s:29:\"<p>No Results To Display.</p>\";s:12:\"suggest_cats\";s:1:\"1\";s:12:\"suggest_tags\";s:1:\"1\";s:14:\"auto_redirects\";s:1:\"1\";s:10:\"auto_score\";s:2:\"90\";s:13:\"auto_deletion\";s:4:\"1095\";s:9:\"auto_cats\";s:1:\"1\";s:9:\"auto_tags\";s:1:\"1\";s:16:\"force_permalinks\";s:1:\"1\";s:10:\"DB_VERSION\";s:6:\"1.4.10\";}','no'),(141,'widgetopts_installDate','2017-06-30 02:40:41','yes'),(142,'widgetopts_tabmodule-visibility','activate','yes'),(143,'widgetopts_tabmodule-devices','activate','yes'),(144,'widgetopts_tabmodule-alignment','activate','yes'),(145,'widgetopts_tabmodule-hide_title','activate','yes'),(146,'widgetopts_tabmodule-classes','activate','yes'),(147,'widgetopts_tabmodule-logic','activate','yes'),(148,'widgetopts_tabmodule-settings','s:158:\"a:2:{s:10:\"visibility\";a:3:{s:9:\"post_type\";s:1:\"1\";s:10:\"taxonomies\";s:1:\"1\";s:4:\"misc\";s:1:\"1\";}s:7:\"classes\";a:2:{s:2:\"id\";s:1:\"1\";s:4:\"type\";s:4:\"both\";}}\";','yes'),(149,'_widgetopts_default_registered_','1','yes'),(150,'itsec-storage','a:4:{s:6:\"global\";a:34:{s:15:\"lockout_message\";s:5:\"error\";s:20:\"user_lockout_message\";s:64:\"You have been locked out due to too many invalid login attempts.\";s:25:\"community_lockout_message\";s:77:\"Your IP address has been flagged as a threat by the iThemes Security network.\";s:9:\"blacklist\";b:1;s:15:\"blacklist_count\";i:3;s:16:\"blacklist_period\";i:7;s:14:\"lockout_period\";i:15;s:18:\"lockout_white_list\";a:0:{}s:12:\"log_rotation\";i:14;s:8:\"log_type\";s:8:\"database\";s:12:\"log_location\";s:70:\"/nas/content/live/neoninstall/wp-content/uploads/ithemes-security/logs\";s:8:\"log_info\";s:50:\"alex-rasmussen-blog-eVgdaplzOuvbCn8tX8teYRIbRw9q7i\";s:14:\"allow_tracking\";b:0;s:11:\"write_files\";b:1;s:10:\"nginx_file\";s:40:\"/nas/content/live/neoninstall/nginx.conf\";s:24:\"infinitewp_compatibility\";b:0;s:11:\"did_upgrade\";b:0;s:9:\"lock_file\";b:0;s:14:\"proxy_override\";b:0;s:14:\"hide_admin_bar\";b:0;s:16:\"show_error_codes\";b:0;s:25:\"show_new_dashboard_notice\";b:0;s:19:\"show_security_check\";b:0;s:5:\"build\";i:4085;s:20:\"activation_timestamp\";i:1520027017;s:11:\"cron_status\";i:1;s:8:\"use_cron\";b:1;s:14:\"cron_test_time\";i:1535086505;s:18:\"notification_email\";a:1:{i:0;s:19:\"alex@neoncanvas.com\";}s:12:\"backup_email\";a:1:{i:0;s:19:\"alex@neoncanvas.com\";}s:19:\"email_notifications\";b:1;s:12:\"digest_email\";b:0;s:16:\"digest_last_sent\";i:1498833640;s:15:\"digest_messages\";a:0:{}}s:16:\"wordpress-tweaks\";a:12:{s:18:\"wlwmanifest_header\";b:0;s:14:\"edituri_header\";b:0;s:12:\"comment_spam\";b:0;s:11:\"file_editor\";b:1;s:14:\"disable_xmlrpc\";i:0;s:22:\"allow_xmlrpc_multiauth\";b:0;s:8:\"rest_api\";s:14:\"default-access\";s:12:\"login_errors\";b:0;s:21:\"force_unique_nicename\";b:0;s:27:\"disable_unused_author_pages\";b:0;s:16:\"block_tabnapping\";b:0;s:21:\"valid_user_login_type\";s:4:\"both\";}s:19:\"network-brute-force\";a:5:{s:7:\"api_key\";s:0:\"\";s:10:\"api_secret\";s:0:\"\";s:10:\"enable_ban\";b:1;s:13:\"updates_optin\";b:1;s:7:\"api_nag\";b:0;}s:19:\"notification-center\";a:6:{s:13:\"notifications\";a:8:{s:6:\"backup\";a:2:{s:7:\"subject\";N;s:10:\"email_list\";a:1:{i:0;s:22:\"trenton@neoncanvas.com\";}}s:14:\"inactive-users\";a:4:{s:7:\"subject\";N;s:8:\"schedule\";s:5:\"daily\";s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:7:\"enabled\";b:0;}s:21:\"magic-link-login-page\";a:2:{s:7:\"subject\";N;s:7:\"message\";s:127:\"Hi {{ $display_name }},\r\n\r\nFor security purposes, please click the button below to login.\r\n\r\nRegards,\r\nAll at {{ $site_title }}\";}s:18:\"malware-scheduling\";a:2:{s:7:\"enabled\";b:1;s:9:\"user_list\";a:1:{i:0;s:1:\"3\";}}s:6:\"digest\";a:4:{s:7:\"subject\";N;s:8:\"schedule\";s:5:\"daily\";s:9:\"user_list\";a:1:{i:0;s:1:\"2\";}s:7:\"enabled\";b:0;}s:13:\"import-export\";a:2:{s:7:\"subject\";N;s:7:\"message\";N;}s:7:\"lockout\";a:3:{s:7:\"subject\";N;s:9:\"user_list\";a:1:{i:0;s:1:\"2\";}s:7:\"enabled\";b:0;}s:19:\"two-factor-reminder\";a:2:{s:7:\"subject\";N;s:7:\"message\";s:135:\"Hi {{ $display_name }},\r\n			\r\n{{ $requester_display_name }} from {{ $site_title }} has asked that you set up Two Factor Authentication.\";}}s:9:\"last_sent\";a:2:{s:6:\"digest\";i:1498833640;s:14:\"inactive-users\";i:1523886584;}s:4:\"data\";a:1:{s:14:\"inactive-users\";a:0:{}}s:9:\"resend_at\";a:0:{}s:12:\"admin_emails\";a:1:{i:0;s:19:\"alex@neoncanvas.com\";}s:11:\"mail_errors\";a:0:{}}}','yes'),(151,'widgetopts_settings','a:9:{s:8:\"settings\";a:2:{s:10:\"visibility\";a:3:{s:9:\"post_type\";s:1:\"1\";s:10:\"taxonomies\";s:1:\"1\";s:4:\"misc\";s:1:\"1\";}s:7:\"classes\";a:2:{s:2:\"id\";s:1:\"1\";s:4:\"type\";s:4:\"both\";}}s:10:\"visibility\";s:8:\"activate\";s:7:\"devices\";s:8:\"activate\";s:9:\"alignment\";s:8:\"activate\";s:10:\"hide_title\";s:8:\"activate\";s:7:\"classes\";s:8:\"activate\";s:5:\"logic\";s:8:\"activate\";s:10:\"siteorigin\";b:0;s:6:\"search\";b:0;}','yes'),(154,'widget_akismet_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(155,'widget_gform_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(156,'widget_search_filter_register_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(157,'widget_testimonialrotatorwidget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(158,'gravityformsaddon_gravityformswebapi_version','1.0','yes'),(159,'gform_enable_background_updates','1','yes'),(161,'gform_pending_installation','','yes'),(162,'rg_form_version','2.3.3','yes'),(163,'_fl_builder_version','2.1.4.3','no'),(166,'widgetopts_global_categories','a:1:{i:0;O:7:\"WP_Term\":16:{s:7:\"term_id\";i:1;s:4:\"name\";s:13:\"Uncategorized\";s:4:\"slug\";s:13:\"uncategorized\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:1;s:8:\"taxonomy\";s:8:\"category\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:6:\"filter\";s:3:\"raw\";s:6:\"cat_ID\";i:1;s:14:\"category_count\";i:1;s:20:\"category_description\";s:0:\"\";s:8:\"cat_name\";s:13:\"Uncategorized\";s:17:\"category_nicename\";s:13:\"uncategorized\";s:15:\"category_parent\";i:0;}}','yes'),(167,'acf_version','5.7.3','yes'),(168,'ewww_image_optimizer_bulk_attachments','','no'),(169,'ewww_image_optimizer_flag_attachments','','no'),(170,'ewww_image_optimizer_ngg_attachments','','no'),(171,'ewww_image_optimizer_defer_attachments','','no'),(172,'ewww_image_optimizer_disable_pngout','1','no'),(173,'ewww_image_optimizer_optipng_level','2','no'),(174,'ewww_image_optimizer_pngout_level','2','no'),(175,'ewww_image_optimizer_jpegtran_copy','1','no'),(176,'ewww_image_optimizer_jpg_level','10','no'),(177,'ewww_image_optimizer_png_level','10','no'),(178,'ewww_image_optimizer_gif_level','10','no'),(179,'ewww_image_optimizer_pdf_level','0','no'),(180,'ewww_image_optimizer_background_optimization','1','yes'),(181,'ewww_image_optimizer_version','327.0','yes'),(182,'search-filter-cache','a:12:{s:6:\"status\";s:5:\"ready\";s:11:\"last_update\";s:0:\"\";s:7:\"restart\";b:1;s:10:\"cache_list\";a:0:{}s:18:\"current_post_index\";i:0;s:16:\"progress_percent\";i:0;s:6:\"locked\";b:0;s:11:\"error_count\";i:0;s:9:\"rc_status\";s:0:\"\";s:10:\"process_id\";i:0;s:10:\"run_method\";s:9:\"automatic\";s:12:\"caching_data\";a:2:{s:10:\"post_types\";a:0:{}s:9:\"meta_keys\";a:0:{}}}','no'),(189,'rml_db_version','2.7.2','yes'),(190,'matthiasweb_advert_hide','1','no'),(191,'matthiasweb_advert_next_ts','1501037165','no'),(192,'wpseo','a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.0\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1523400976;}','yes'),(194,'wpseo_titles','a:77:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:0;s:23:\"is-media-purge-relevant\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:17:\"title-testimonial\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:20:\"metadesc-testimonial\";s:0:\"\";s:19:\"noindex-testimonial\";b:0;s:20:\"showdate-testimonial\";b:0;s:27:\"title-ptarchive-testimonial\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:30:\"metadesc-ptarchive-testimonial\";s:0:\"\";s:29:\"bctitle-ptarchive-testimonial\";s:0:\"\";s:29:\"noindex-ptarchive-testimonial\";b:0;s:38:\"title-tax-fl-builder-template-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:41:\"metadesc-tax-fl-builder-template-category\";s:0:\"\";s:40:\"noindex-tax-fl-builder-template-category\";b:0;s:46:\"taxonomy-fl-builder-template-category-ptparent\";i:0;}','yes'),(195,'wpseo_social','a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:7:\"summary\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}','yes'),(199,'wpseo_flush_rewrite','1','yes'),(200,'widgetopts_RatingDiv','yes','yes'),(219,'widget_wp_accessibility_toolbar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(220,'wp-optimize-schedule','false','yes'),(221,'wp-optimize-last-optimized','Never','yes'),(222,'wp-optimize-schedule-type','wpo_weekly','yes'),(223,'wp-optimize-retention-enabled','false','yes'),(224,'wp-optimize-retention-period','2','yes'),(225,'wp-optimize-enable-admin-menu','false','yes'),(226,'wp-optimize-total-cleaned','0','yes'),(227,'wp-optimize-auto','a:6:{s:5:\"spams\";s:4:\"true\";s:10:\"unapproved\";s:5:\"false\";s:6:\"drafts\";s:4:\"true\";s:9:\"transient\";s:5:\"false\";s:9:\"revisions\";s:4:\"true\";s:8:\"optimize\";s:5:\"false\";}','yes'),(228,'wp-optimize-settings','a:12:{s:10:\"user-spams\";s:4:\"true\";s:15:\"user-unapproved\";s:4:\"true\";s:13:\"user-postmeta\";s:5:\"false\";s:16:\"user-commentmeta\";s:5:\"false\";s:11:\"user-drafts\";s:4:\"true\";s:15:\"user-trackbacks\";s:5:\"false\";s:14:\"user-pingbacks\";s:5:\"false\";s:15:\"user-orphandata\";s:5:\"false\";s:14:\"user-transient\";s:5:\"false\";s:14:\"user-revisions\";s:4:\"true\";s:13:\"user-optimize\";s:4:\"true\";s:13:\"last_saved_in\";s:5:\"2.1.1\";}','yes'),(229,'pagenavi_options','a:15:{s:10:\"pages_text\";s:36:\"Page %CURRENT_PAGE% of %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:13:\"&laquo; First\";s:9:\"last_text\";s:12:\"Last &raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";b:0;s:16:\"use_pagenavi_css\";b:1;s:5:\"style\";i:1;}','yes'),(241,'rg_gforms_key','7d2f42c72f489800a0e06f4764d0074e','yes'),(242,'rg_gforms_enable_akismet','0','yes'),(243,'rg_gforms_currency','USD','yes'),(244,'gform_enable_toolbar_menu','1','yes'),(257,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(267,'rg_gforms_captcha_public_key','','yes'),(268,'rg_gforms_captcha_private_key','','yes'),(269,'rg_gforms_message','<!--GFM-->','yes'),(271,'widgetopts_removed_global_pages','1','yes'),(272,'gf_is_upgrading','0','yes'),(273,'gf_previous_db_version','2.3.2','yes'),(274,'gpagespeedi_upgrade_recheck_required','1','yes'),(289,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),(293,'category_children','a:0:{}','yes'),(346,'acf_pro_license','YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRJd05EazNmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE55MHhNaTB3T0NBeE56b3lOVG95TXc9PSI7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9uZW9uaW5zdGFsbC53cGVuZ2luZS5jb20iO30=','yes'),(350,'wp-optimize-dismiss_dash_notice_until','1544801798','yes'),(354,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(375,'wpseo_license_server_version','2','yes'),(420,'itsec_temp_whitelist_ip','a:1:{s:12:\"73.23.89.171\";i:1535129958;}','no'),(422,'ithemes-updater-cache','a:9:{s:18:\"timeout-multiplier\";i:1;s:10:\"expiration\";i:0;s:9:\"timestamp\";i:0;s:8:\"packages\";a:1:{i:0;s:20:\"ithemes-security-pro\";}s:14:\"update_plugins\";a:0:{}s:13:\"update_themes\";a:0:{}s:12:\"use_ca_patch\";b:0;s:7:\"use_ssl\";b:1;s:14:\"quick_releases\";b:0;}','no'),(424,'itsec_active_modules','a:11:{s:9:\"ban-users\";b:1;s:6:\"backup\";b:1;s:11:\"brute-force\";b:1;s:19:\"network-brute-force\";b:1;s:16:\"strong-passwords\";b:1;s:16:\"wordpress-tweaks\";b:1;s:11:\"magic-links\";b:1;s:18:\"malware-scheduling\";b:1;s:10:\"two-factor\";b:0;s:12:\"user-logging\";b:1;s:18:\"version-management\";b:1;}','yes'),(615,'gform_sticky_admin_messages','a:0:{}','yes'),(621,'gform_version_info','a:10:{s:12:\"is_valid_key\";b:1;s:6:\"reason\";s:0:\"\";s:7:\"version\";s:5:\"2.3.3\";s:3:\"url\";s:166:\"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.3.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=SzkYR3pOA1QVJ7iqWKi%2BDyomLOY%3D\";s:15:\"expiration_time\";i:1563667200;s:9:\"offerings\";a:46:{s:12:\"gravityforms\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"2.3.3\";s:14:\"version_latest\";s:7:\"2.3.3.6\";s:3:\"url\";s:166:\"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.3.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=SzkYR3pOA1QVJ7iqWKi%2BDyomLOY%3D\";s:10:\"url_latest\";s:166:\"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.3.3.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=9w6KQE0lq8OT3JmTPQf8bq0mfS4%3D\";}s:26:\"gravityformsactivecampaign\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:5:\"1.4.5\";s:3:\"url\";s:189:\"http://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=UOBH5ZRehYDWMA0T2GOSvVTMPnY%3D\";s:10:\"url_latest\";s:191:\"http://s3.amazonaws.com/gravityforms/addons/activecampaign/gravityformsactivecampaign_1.4.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=B377FX7RK70Xh2GzS9FWURk8Yts%3D\";}s:20:\"gravityformsagilecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=P%2FVGjkqtVvUYXtX5M1q40efExkI%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/agilecrm/gravityformsagilecrm_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=P%2FVGjkqtVvUYXtX5M1q40efExkI%3D\";}s:24:\"gravityformsauthorizenet\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.6\";s:14:\"version_latest\";s:3:\"2.6\";s:3:\"url\";s:187:\"http://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=oF88OLA3ZcX%2FEETEjR4vl19hdPg%3D\";s:10:\"url_latest\";s:187:\"http://s3.amazonaws.com/gravityforms/addons/authorizenet/gravityformsauthorizenet_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=oF88OLA3ZcX%2FEETEjR4vl19hdPg%3D\";}s:18:\"gravityformsaweber\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.7\";s:14:\"version_latest\";s:5:\"2.7.1\";s:3:\"url\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=JGGXYiLOP0vVb1hX9Lp5yEVRYxM%3D\";s:10:\"url_latest\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/aweber/gravityformsaweber_2.7.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=MpB%2B%2FbCNQVej4Lmu%2BeQY%2B2rfzV4%3D\";}s:21:\"gravityformsbatchbook\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=Dvkfh%2BfySK19Z1G5Ch2%2BBFC5s3Y%3D\";s:10:\"url_latest\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/batchbook/gravityformsbatchbook_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=Dvkfh%2BfySK19Z1G5Ch2%2BBFC5s3Y%3D\";}s:18:\"gravityformsbreeze\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=3aTj64qAfIB0r0%2BvnKYB1xQFifo%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/breeze/gravityformsbreeze_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=3aTj64qAfIB0r0%2BvnKYB1xQFifo%3D\";}s:27:\"gravityformscampaignmonitor\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.7\";s:14:\"version_latest\";s:3:\"3.7\";s:3:\"url\";s:193:\"http://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=TSE1afyb8WZeBZtc2s%2FwO490pI8%3D\";s:10:\"url_latest\";s:193:\"http://s3.amazonaws.com/gravityforms/addons/campaignmonitor/gravityformscampaignmonitor_3.7.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=TSE1afyb8WZeBZtc2s%2FwO490pI8%3D\";}s:20:\"gravityformscampfire\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.2.1\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=uUkqMAKUx7FkrxO3NiL5WXqGJ1Y%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/campfire/gravityformscampfire_1.2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=PEk8E2Zp5o3gkqo%2F5rouuVBrETA%3D\";}s:22:\"gravityformscapsulecrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=laFzXxZ%2BTNaPPqoI4eeS5DQtC64%3D\";s:10:\"url_latest\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/capsulecrm/gravityformscapsulecrm_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=laFzXxZ%2BTNaPPqoI4eeS5DQtC64%3D\";}s:26:\"gravityformschainedselects\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:3:\"1.1\";s:3:\"url\";s:191:\"http://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=iGs%2F442XcmkKafRMkrSC3zMIzNA%3D\";s:10:\"url_latest\";s:191:\"http://s3.amazonaws.com/gravityforms/addons/chainedselects/gravityformschainedselects_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=iGs%2F442XcmkKafRMkrSC3zMIzNA%3D\";}s:23:\"gravityformscleverreach\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.4\";s:14:\"version_latest\";s:3:\"1.4\";s:3:\"url\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=UHH2cWTFeUxsMCyzpixCeEOM6Mk%3D\";s:10:\"url_latest\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/cleverreach/gravityformscleverreach_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=UHH2cWTFeUxsMCyzpixCeEOM6Mk%3D\";}s:19:\"gravityformscoupons\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.6\";s:14:\"version_latest\";s:5:\"2.6.2\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=HA188yZgME7PbKFgUP9MwXe8pzc%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/coupons/gravityformscoupons_2.6.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=hJLsHcBZGUo9cX%2BUA3LEIOswZn8%3D\";}s:17:\"gravityformsdebug\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";s:10:\"1.0.beta10\";s:3:\"url\";s:0:\"\";s:10:\"url_latest\";s:178:\"http://s3.amazonaws.com/gravityforms/addons/debug/gravityformsdebug_1.0.beta10.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=TZkTajbnHYZwD9Ld2W4M1VI9Q8s%3D\";}s:19:\"gravityformsdropbox\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.1\";s:14:\"version_latest\";s:5:\"2.1.1\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=cZBgY3uFuPbUYLn4xHAnRUpvSWo%3D\";s:10:\"url_latest\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/dropbox/gravityformsdropbox_2.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=P6sp9I6AbWC7HuUlk38uNezoUAk%3D\";}s:16:\"gravityformsemma\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.5\";s:3:\"url\";s:169:\"http://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=c02w4uCuxzy1fKQ9vw0w50s0jwo%3D\";s:10:\"url_latest\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/emma/gravityformsemma_1.2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=z8ywkb99Vo%2ByUlWU7sHl7V5phtk%3D\";}s:22:\"gravityformsfreshbooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.5\";s:14:\"version_latest\";s:5:\"2.5.2\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=jo1vf3OsJY0Exljt44qmAafNl0I%3D\";s:10:\"url_latest\";s:187:\"http://s3.amazonaws.com/gravityforms/addons/freshbooks/gravityformsfreshbooks_2.5.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=wEHWB%2FE%2F5gYyc1BkTqjapMf1s2M%3D\";}s:23:\"gravityformsgetresponse\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=uG1P2GPnvLd5KIl9yYoFTK6PuK4%3D\";s:10:\"url_latest\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/getresponse/gravityformsgetresponse_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=uG1P2GPnvLd5KIl9yYoFTK6PuK4%3D\";}s:21:\"gravityformsgutenberg\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"1.0-beta-5\";s:14:\"version_latest\";s:10:\"1.0-beta-5\";s:3:\"url\";s:188:\"http://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-beta-5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=PujDuXhO06cV3lMzKMfl%2BEiPYBA%3D\";s:10:\"url_latest\";s:188:\"http://s3.amazonaws.com/gravityforms/addons/gutenberg/gravityformsgutenberg_1.0-beta-5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=PujDuXhO06cV3lMzKMfl%2BEiPYBA%3D\";}s:21:\"gravityformshelpscout\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:185:\"http://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=0G%2FP%2F6Gzpm%2Fx68avRMV31fUiyNs%3D\";s:10:\"url_latest\";s:185:\"http://s3.amazonaws.com/gravityforms/addons/helpscout/gravityformshelpscout_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=0G%2FP%2F6Gzpm%2Fx68avRMV31fUiyNs%3D\";}s:20:\"gravityformshighrise\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.3\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=FOsEucUe2I3VYfo1cZWWR%2B%2FWBs8%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/highrise/gravityformshighrise_1.2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=%2FoDNj942HkEoWE7elJzK8coSVpo%3D\";}s:19:\"gravityformshipchat\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/hipchat/gravityformshipchat_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=kH0%2F3y%2Fyd3SewtrPd0e5UA9MUas%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/hipchat/gravityformshipchat_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=kH0%2F3y%2Fyd3SewtrPd0e5UA9MUas%3D\";}s:20:\"gravityformsicontact\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:3:\"1.3\";s:3:\"url\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=KvrRELOWa%2F19JJ6882IKexgS4I8%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/icontact/gravityformsicontact_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=KvrRELOWa%2F19JJ6882IKexgS4I8%3D\";}s:19:\"gravityformslogging\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.3\";s:14:\"version_latest\";s:5:\"1.3.1\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=3L3IFzk9LOV3zk0JjXTpCmgL6NA%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/logging/gravityformslogging_1.3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=EqiZ%2BilhOzfSe4wrhA6epTXGWBc%3D\";}s:19:\"gravityformsmadmimi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:3:\"1.2\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=vqDC2jAKvQ0xFowARaJslfL%2BAps%3D\";s:10:\"url_latest\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/madmimi/gravityformsmadmimi_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=vqDC2jAKvQ0xFowARaJslfL%2BAps%3D\";}s:21:\"gravityformsmailchimp\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"4.3\";s:14:\"version_latest\";s:3:\"4.3\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=IHl0CBr9ojfdQ4fSfhvybyb15%2BI%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/mailchimp/gravityformsmailchimp_4.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=IHl0CBr9ojfdQ4fSfhvybyb15%2BI%3D\";}s:26:\"gravityformspartialentries\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.1\";s:3:\"url\";s:191:\"http://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=qq%2FyD48ZFERGPB29h1JtulDjzXI%3D\";s:10:\"url_latest\";s:197:\"http://s3.amazonaws.com/gravityforms/addons/partialentries/gravityformspartialentries_1.2.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=1pw3%2BPYO%2BqXNYSg%2FkHbI3mOtlpo%3D\";}s:18:\"gravityformspaypal\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.1\";s:14:\"version_latest\";s:5:\"3.1.1\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=y%2FZm30G5rRCnsPWtc3Iaee41l%2Bk%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/paypal/gravityformspaypal_3.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=YQxfVzsF0RWRUWsU9HGq5gcJ3pM%3D\";}s:33:\"gravityformspaypalexpresscheckout\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:0:\"\";s:14:\"version_latest\";N;}s:29:\"gravityformspaypalpaymentspro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.3\";s:14:\"version_latest\";s:5:\"2.3.2\";s:3:\"url\";s:195:\"http://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=Ov8G79LynWDV3anPSJxRQDCnAnc%3D\";s:10:\"url_latest\";s:201:\"http://s3.amazonaws.com/gravityforms/addons/paypalpaymentspro/gravityformspaypalpaymentspro_2.3.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=dA9abJLBQhFb%2FJYL85wsH1q%2F8co%3D\";}s:21:\"gravityformspaypalpro\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"1.8.1\";s:14:\"version_latest\";s:5:\"1.8.1\";s:3:\"url\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=y1x9YyOU%2Bo1itPHuKM6ENniglH0%3D\";s:10:\"url_latest\";s:183:\"http://s3.amazonaws.com/gravityforms/addons/paypalpro/gravityformspaypalpro_1.8.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=y1x9YyOU%2Bo1itPHuKM6ENniglH0%3D\";}s:20:\"gravityformspicatcha\";a:3:{s:12:\"is_available\";b:0;s:7:\"version\";s:3:\"2.0\";s:14:\"version_latest\";s:3:\"2.0\";}s:16:\"gravityformspipe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:3:\"1.1\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=%2FO1YloOlxoE8pi%2BLq211x%2BXSqgY%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/pipe/gravityformspipe_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=%2FO1YloOlxoE8pi%2BLq211x%2BXSqgY%3D\";}s:17:\"gravityformspolls\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.1\";s:14:\"version_latest\";s:5:\"3.1.4\";s:3:\"url\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=8ROdV4O9gABbgxtUNqETYG%2BFnMY%3D\";s:10:\"url_latest\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/polls/gravityformspolls_3.1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=sremoGJfpit3VTfy4Na4nPTmX9Q%3D\";}s:16:\"gravityformsquiz\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.1\";s:14:\"version_latest\";s:5:\"3.1.8\";s:3:\"url\";s:169:\"http://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=it5c2WmoSHMQf1j1kS9ttaMsg6k%3D\";s:10:\"url_latest\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/quiz/gravityformsquiz_3.1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=h1xBhNgFjk%2FzU5RMkGjisjs8wXY%3D\";}s:19:\"gravityformsrestapi\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:10:\"2.0-beta-2\";s:14:\"version_latest\";s:10:\"2.0-beta-2\";s:3:\"url\";s:186:\"http://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=hh3%2FZImzimKyYEEk7Lk%2FZNGV5Z0%3D\";s:10:\"url_latest\";s:186:\"http://s3.amazonaws.com/gravityforms/addons/restapi/gravityformsrestapi_2.0-beta-2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=hh3%2FZImzimKyYEEk7Lk%2FZNGV5Z0%3D\";}s:21:\"gravityformssignature\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:5:\"3.5.1\";s:14:\"version_latest\";s:5:\"3.5.2\";s:3:\"url\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_3.5.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=XLD4r8i8qaY86s62csEfJPkmSFo%3D\";s:10:\"url_latest\";s:181:\"http://s3.amazonaws.com/gravityforms/addons/signature/gravityformssignature_3.5.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=ib0XIF5jQWnAmWfdbHLdEJPO660%3D\";}s:17:\"gravityformsslack\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.8\";s:14:\"version_latest\";s:3:\"1.8\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=Hju%2BKk%2FwCxRbt7Y9UX3TI6pM74E%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/slack/gravityformsslack_1.8.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=Hju%2BKk%2FwCxRbt7Y9UX3TI6pM74E%3D\";}s:18:\"gravityformsstripe\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.5\";s:14:\"version_latest\";s:5:\"2.5.4\";s:3:\"url\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=xVjAd9NpaWVOMYoawYQFFaY82QE%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/stripe/gravityformsstripe_2.5.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=tZ2d0YtVlWLDPQaYPhEmJ29jdlo%3D\";}s:18:\"gravityformssurvey\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.2\";s:14:\"version_latest\";s:5:\"3.2.2\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=qWlHXWqljRpa0NxRFOYxD%2BEyiCQ%3D\";s:10:\"url_latest\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/survey/gravityformssurvey_3.2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=gWfmSiJWnh%2FANmOB8ZGadjfnsLo%3D\";}s:18:\"gravityformstrello\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.2\";s:14:\"version_latest\";s:5:\"1.2.2\";s:3:\"url\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=OFyQuw9AUH4iXBkSCMFCG%2B1Rb2w%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/trello/gravityformstrello_1.2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=gSg5%2FhVE%2FVsmyQaJUCsCTvJNuGQ%3D\";}s:18:\"gravityformstwilio\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"2.5\";s:14:\"version_latest\";s:5:\"2.5.1\";s:3:\"url\";s:173:\"http://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=NCb4rkl0k5GMIxqd0oy3QSWydeE%3D\";s:10:\"url_latest\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/twilio/gravityformstwilio_2.5.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=3w%2BEiFKGsKZeZDpeSQToxJvrys8%3D\";}s:28:\"gravityformsuserregistration\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.9\";s:14:\"version_latest\";s:5:\"3.9.5\";s:3:\"url\";s:195:\"http://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_3.9.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=x4uZ8iC279HSnMK%2B5WDICJWOKrw%3D\";s:10:\"url_latest\";s:197:\"http://s3.amazonaws.com/gravityforms/addons/userregistration/gravityformsuserregistration_3.9.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=K1AOTA%2BlVKiCGR7W6Tro4pZsjqE%3D\";}s:20:\"gravityformswebhooks\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.1\";s:14:\"version_latest\";s:5:\"1.1.5\";s:3:\"url\";s:177:\"http://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=BWb1v5DqLVOmC3ueBAhSmKMKVvA%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/webhooks/gravityformswebhooks_1.1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=bBXm0kDSpRbWasUZ8FyczO0qJBQ%3D\";}s:18:\"gravityformszapier\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"3.0\";s:14:\"version_latest\";s:5:\"3.0.1\";s:3:\"url\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_3.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=znhGAvO9%2F9xxR2PirvxpG%2Fo%2FiSM%3D\";s:10:\"url_latest\";s:175:\"http://s3.amazonaws.com/gravityforms/addons/zapier/gravityformszapier_3.0.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=q2888nxQzBAmfRVzRWpvIXs9bRg%3D\";}s:19:\"gravityformszohocrm\";a:5:{s:12:\"is_available\";b:1;s:7:\"version\";s:3:\"1.5\";s:14:\"version_latest\";s:3:\"1.5\";s:3:\"url\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=i7KwC0zCp9z%2BnTu%2FqQxn0d7JrUU%3D\";s:10:\"url_latest\";s:179:\"http://s3.amazonaws.com/gravityforms/addons/zohocrm/gravityformszohocrm_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=i7KwC0zCp9z%2BnTu%2FqQxn0d7JrUU%3D\";}}s:9:\"is_active\";s:1:\"1\";s:14:\"version_latest\";s:7:\"2.3.3.6\";s:10:\"url_latest\";s:166:\"http://s3.amazonaws.com/gravityforms/releases/gravityforms_2.3.3.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1535146559&Signature=9w6KQE0lq8OT3JmTPQf8bq0mfS4%3D\";s:9:\"timestamp\";i:1534973759;}','yes'),(625,'fl_themes_subscription_email','7a62702e666e69616e706162726140666761686270706e','no'),(759,'widgetopts_global_all_pages','a:6:{i:0;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"17\";s:10:\"post_title\";s:8:\"About Us\";s:11:\"post_parent\";s:1:\"0\";}i:1;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"20\";s:10:\"post_title\";s:4:\"Blog\";s:11:\"post_parent\";s:1:\"0\";}i:2;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"21\";s:10:\"post_title\";s:10:\"Contact Us\";s:11:\"post_parent\";s:1:\"0\";}i:3;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"12\";s:10:\"post_title\";s:4:\"Home\";s:11:\"post_parent\";s:1:\"0\";}i:4;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"19\";s:10:\"post_title\";s:9:\"Portfolio\";s:11:\"post_parent\";s:1:\"0\";}i:5;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"18\";s:10:\"post_title\";s:8:\"Services\";s:11:\"post_parent\";s:1:\"0\";}}','yes'),(771,'widgetopts_global_taxonomies','a:3:{s:8:\"category\";O:11:\"WP_Taxonomy\":23:{s:4:\"name\";s:8:\"category\";s:5:\"label\";s:10:\"Categories\";s:6:\"labels\";O:8:\"stdClass\":23:{s:4:\"name\";s:10:\"Categories\";s:13:\"singular_name\";s:8:\"Category\";s:12:\"search_items\";s:17:\"Search Categories\";s:13:\"popular_items\";N;s:9:\"all_items\";s:14:\"All Categories\";s:11:\"parent_item\";s:15:\"Parent Category\";s:17:\"parent_item_colon\";s:16:\"Parent Category:\";s:9:\"edit_item\";s:13:\"Edit Category\";s:9:\"view_item\";s:13:\"View Category\";s:11:\"update_item\";s:15:\"Update Category\";s:12:\"add_new_item\";s:16:\"Add New Category\";s:13:\"new_item_name\";s:17:\"New Category Name\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:20:\"No categories found.\";s:8:\"no_terms\";s:13:\"No categories\";s:21:\"items_list_navigation\";s:26:\"Categories list navigation\";s:10:\"items_list\";s:15:\"Categories list\";s:9:\"most_used\";s:9:\"Most Used\";s:13:\"back_to_items\";s:25:\"&larr; Back to Categories\";s:9:\"menu_name\";s:10:\"Categories\";s:14:\"name_admin_bar\";s:8:\"category\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:15:\"edit_categories\";s:12:\"delete_terms\";s:17:\"delete_categories\";s:12:\"assign_terms\";s:17:\"assign_categories\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:1;s:7:\"ep_mask\";i:512;s:4:\"slug\";s:8:\"category\";}s:9:\"query_var\";s:13:\"category_name\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:10:\"categories\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;}s:8:\"post_tag\";O:11:\"WP_Taxonomy\":23:{s:4:\"name\";s:8:\"post_tag\";s:5:\"label\";s:4:\"Tags\";s:6:\"labels\";O:8:\"stdClass\":23:{s:4:\"name\";s:4:\"Tags\";s:13:\"singular_name\";s:3:\"Tag\";s:12:\"search_items\";s:11:\"Search Tags\";s:13:\"popular_items\";s:12:\"Popular Tags\";s:9:\"all_items\";s:8:\"All Tags\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:8:\"Edit Tag\";s:9:\"view_item\";s:8:\"View Tag\";s:11:\"update_item\";s:10:\"Update Tag\";s:12:\"add_new_item\";s:11:\"Add New Tag\";s:13:\"new_item_name\";s:12:\"New Tag Name\";s:26:\"separate_items_with_commas\";s:25:\"Separate tags with commas\";s:19:\"add_or_remove_items\";s:18:\"Add or remove tags\";s:21:\"choose_from_most_used\";s:30:\"Choose from the most used tags\";s:9:\"not_found\";s:14:\"No tags found.\";s:8:\"no_terms\";s:7:\"No tags\";s:21:\"items_list_navigation\";s:20:\"Tags list navigation\";s:10:\"items_list\";s:9:\"Tags list\";s:9:\"most_used\";s:9:\"Most Used\";s:13:\"back_to_items\";s:19:\"&larr; Back to Tags\";s:9:\"menu_name\";s:4:\"Tags\";s:14:\"name_admin_bar\";s:8:\"post_tag\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:16:\"manage_post_tags\";s:10:\"edit_terms\";s:14:\"edit_post_tags\";s:12:\"delete_terms\";s:16:\"delete_post_tags\";s:12:\"assign_terms\";s:16:\"assign_post_tags\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:1024;s:4:\"slug\";s:3:\"tag\";}s:9:\"query_var\";s:3:\"tag\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:4:\"tags\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;}s:28:\"fl-builder-template-category\";O:11:\"WP_Taxonomy\":23:{s:4:\"name\";s:28:\"fl-builder-template-category\";s:5:\"label\";s:10:\"Categories\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:10:\"Categories\";s:13:\"singular_name\";s:8:\"Category\";s:12:\"search_items\";s:17:\"Search Categories\";s:13:\"popular_items\";N;s:9:\"all_items\";s:14:\"All Categories\";s:11:\"parent_item\";s:15:\"Parent Category\";s:17:\"parent_item_colon\";s:16:\"Parent Category:\";s:9:\"edit_item\";s:13:\"Edit Category\";s:9:\"view_item\";s:13:\"View Category\";s:11:\"update_item\";s:15:\"Update Category\";s:12:\"add_new_item\";s:16:\"Add New Category\";s:13:\"new_item_name\";s:17:\"New Category Name\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:20:\"No categories found.\";s:8:\"no_terms\";s:13:\"No categories\";s:21:\"items_list_navigation\";s:26:\"Categories list navigation\";s:10:\"items_list\";s:15:\"Categories list\";s:9:\"most_used\";s:9:\"Most Used\";s:13:\"back_to_items\";s:25:\"&larr; Back to Categories\";s:9:\"menu_name\";s:10:\"Categories\";s:14:\"name_admin_bar\";s:8:\"Category\";s:8:\"archives\";s:14:\"All Categories\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:11:\"object_type\";a:2:{i:0;s:19:\"fl-builder-template\";i:1;s:15:\"fl-theme-layout\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:7:\"rewrite\";a:5:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:0;i:0;s:0:\"\";s:4:\"slug\";s:28:\"fl-builder-template-category\";}s:9:\"query_var\";s:28:\"fl-builder-template-category\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";b:0;s:8:\"_builtin\";b:0;}}','yes'),(772,'widgetopts_global_types','a:4:{s:4:\"post\";O:12:\"WP_Post_Type\":30:{s:4:\"name\";s:4:\"post\";s:5:\"label\";s:5:\"Posts\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:5:\"Posts\";s:13:\"singular_name\";s:4:\"Post\";s:7:\"add_new\";s:7:\"Add New\";s:12:\"add_new_item\";s:12:\"Add New Post\";s:9:\"edit_item\";s:9:\"Edit Post\";s:8:\"new_item\";s:8:\"New Post\";s:9:\"view_item\";s:9:\"View Post\";s:10:\"view_items\";s:10:\"View Posts\";s:12:\"search_items\";s:12:\"Search Posts\";s:9:\"not_found\";s:15:\"No posts found.\";s:18:\"not_found_in_trash\";s:24:\"No posts found in Trash.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:9:\"All Posts\";s:8:\"archives\";s:13:\"Post Archives\";s:10:\"attributes\";s:15:\"Post Attributes\";s:16:\"insert_into_item\";s:16:\"Insert into post\";s:21:\"uploaded_to_this_item\";s:21:\"Uploaded to this post\";s:14:\"featured_image\";s:14:\"Featured Image\";s:18:\"set_featured_image\";s:18:\"Set featured image\";s:21:\"remove_featured_image\";s:21:\"Remove featured image\";s:18:\"use_featured_image\";s:21:\"Use as featured image\";s:17:\"filter_items_list\";s:17:\"Filter posts list\";s:21:\"items_list_navigation\";s:21:\"Posts list navigation\";s:10:\"items_list\";s:10:\"Posts list\";s:9:\"menu_name\";s:5:\"Posts\";s:14:\"name_admin_bar\";s:4:\"Post\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";i:5;s:9:\"menu_icon\";N;s:15:\"capability_type\";s:4:\"post\";s:12:\"map_meta_cap\";b:1;s:20:\"register_meta_box_cb\";N;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:1;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:7:\"rewrite\";b:0;s:8:\"supports\";N;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:5:\"posts\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";}s:4:\"page\";O:12:\"WP_Post_Type\":30:{s:4:\"name\";s:4:\"page\";s:5:\"label\";s:5:\"Pages\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:5:\"Pages\";s:13:\"singular_name\";s:4:\"Page\";s:7:\"add_new\";s:7:\"Add New\";s:12:\"add_new_item\";s:12:\"Add New Page\";s:9:\"edit_item\";s:9:\"Edit Page\";s:8:\"new_item\";s:8:\"New Page\";s:9:\"view_item\";s:9:\"View Page\";s:10:\"view_items\";s:10:\"View Pages\";s:12:\"search_items\";s:12:\"Search Pages\";s:9:\"not_found\";s:15:\"No pages found.\";s:18:\"not_found_in_trash\";s:24:\"No pages found in Trash.\";s:17:\"parent_item_colon\";s:12:\"Parent Page:\";s:9:\"all_items\";s:9:\"All Pages\";s:8:\"archives\";s:13:\"Page Archives\";s:10:\"attributes\";s:15:\"Page Attributes\";s:16:\"insert_into_item\";s:16:\"Insert into page\";s:21:\"uploaded_to_this_item\";s:21:\"Uploaded to this page\";s:14:\"featured_image\";s:14:\"Featured Image\";s:18:\"set_featured_image\";s:18:\"Set featured image\";s:21:\"remove_featured_image\";s:21:\"Remove featured image\";s:18:\"use_featured_image\";s:21:\"Use as featured image\";s:17:\"filter_items_list\";s:17:\"Filter pages list\";s:21:\"items_list_navigation\";s:21:\"Pages list navigation\";s:10:\"items_list\";s:10:\"Pages list\";s:9:\"menu_name\";s:5:\"Pages\";s:14:\"name_admin_bar\";s:4:\"Page\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:1;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";i:20;s:9:\"menu_icon\";N;s:15:\"capability_type\";s:4:\"page\";s:12:\"map_meta_cap\";b:1;s:20:\"register_meta_box_cb\";N;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:1;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_page\";s:9:\"read_post\";s:9:\"read_page\";s:11:\"delete_post\";s:11:\"delete_page\";s:10:\"edit_posts\";s:10:\"edit_pages\";s:17:\"edit_others_posts\";s:17:\"edit_others_pages\";s:13:\"publish_posts\";s:13:\"publish_pages\";s:18:\"read_private_posts\";s:18:\"read_private_pages\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_pages\";s:20:\"delete_private_posts\";s:20:\"delete_private_pages\";s:22:\"delete_published_posts\";s:22:\"delete_published_pages\";s:19:\"delete_others_posts\";s:19:\"delete_others_pages\";s:18:\"edit_private_posts\";s:18:\"edit_private_pages\";s:20:\"edit_published_posts\";s:20:\"edit_published_pages\";s:12:\"create_posts\";s:10:\"edit_pages\";}s:7:\"rewrite\";b:0;s:8:\"supports\";N;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:5:\"pages\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";}s:10:\"attachment\";O:12:\"WP_Post_Type\":30:{s:4:\"name\";s:10:\"attachment\";s:5:\"label\";s:5:\"Media\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:5:\"Media\";s:13:\"singular_name\";s:5:\"Media\";s:7:\"add_new\";s:7:\"Add New\";s:12:\"add_new_item\";s:12:\"Add New Post\";s:9:\"edit_item\";s:10:\"Edit Media\";s:8:\"new_item\";s:8:\"New Post\";s:9:\"view_item\";s:20:\"View Attachment Page\";s:10:\"view_items\";s:10:\"View Posts\";s:12:\"search_items\";s:12:\"Search Posts\";s:9:\"not_found\";s:15:\"No posts found.\";s:18:\"not_found_in_trash\";s:24:\"No posts found in Trash.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:5:\"Media\";s:8:\"archives\";s:5:\"Media\";s:10:\"attributes\";s:21:\"Attachment Attributes\";s:16:\"insert_into_item\";s:16:\"Insert into post\";s:21:\"uploaded_to_this_item\";s:21:\"Uploaded to this post\";s:14:\"featured_image\";s:14:\"Featured Image\";s:18:\"set_featured_image\";s:18:\"Set featured image\";s:21:\"remove_featured_image\";s:21:\"Remove featured image\";s:18:\"use_featured_image\";s:21:\"Use as featured image\";s:17:\"filter_items_list\";s:17:\"Filter posts list\";s:21:\"items_list_navigation\";s:21:\"Posts list navigation\";s:10:\"items_list\";s:10:\"Posts list\";s:9:\"menu_name\";s:5:\"Media\";s:14:\"name_admin_bar\";s:5:\"Media\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";N;s:9:\"menu_icon\";N;s:15:\"capability_type\";s:4:\"post\";s:12:\"map_meta_cap\";b:1;s:20:\"register_meta_box_cb\";N;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:1;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:12:\"upload_files\";}s:7:\"rewrite\";b:0;s:8:\"supports\";N;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:5:\"media\";s:21:\"rest_controller_class\";s:30:\"WP_REST_Attachments_Controller\";}s:11:\"testimonial\";O:12:\"WP_Post_Type\":30:{s:4:\"name\";s:11:\"testimonial\";s:5:\"label\";s:12:\"Testimonials\";s:6:\"labels\";O:8:\"stdClass\":26:{s:4:\"name\";s:12:\"Testimonials\";s:13:\"singular_name\";s:11:\"Testimonial\";s:7:\"add_new\";s:7:\"Add New\";s:12:\"add_new_item\";s:19:\"Add New Testimonial\";s:9:\"edit_item\";s:16:\"Edit Testimonial\";s:8:\"new_item\";s:15:\"New Testimonial\";s:9:\"view_item\";s:16:\"View Testimonial\";s:10:\"view_items\";s:10:\"View Posts\";s:12:\"search_items\";s:19:\"Search Testimonials\";s:9:\"not_found\";s:21:\"No testimonials found\";s:18:\"not_found_in_trash\";s:30:\"No testimonials found in Trash\";s:17:\"parent_item_colon\";s:0:\"\";s:9:\"all_items\";s:16:\"All Testimonials\";s:8:\"archives\";s:16:\"All Testimonials\";s:10:\"attributes\";s:15:\"Post Attributes\";s:16:\"insert_into_item\";s:16:\"Insert into post\";s:21:\"uploaded_to_this_item\";s:21:\"Uploaded to this post\";s:14:\"featured_image\";s:14:\"Featured Image\";s:18:\"set_featured_image\";s:18:\"Set featured image\";s:21:\"remove_featured_image\";s:21:\"Remove featured image\";s:18:\"use_featured_image\";s:21:\"Use as featured image\";s:17:\"filter_items_list\";s:17:\"Filter posts list\";s:21:\"items_list_navigation\";s:21:\"Posts list navigation\";s:10:\"items_list\";s:10:\"Posts list\";s:9:\"menu_name\";s:12:\"Testimonials\";s:14:\"name_admin_bar\";s:11:\"Testimonial\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:1;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";d:26.6;s:9:\"menu_icon\";N;s:15:\"capability_type\";s:4:\"post\";s:12:\"map_meta_cap\";b:1;s:20:\"register_meta_box_cb\";N;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:1;s:9:\"query_var\";s:11:\"testimonial\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";N;s:8:\"_builtin\";b:0;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:7:\"rewrite\";a:5:{s:4:\"slug\";s:12:\"testimonials\";s:10:\"with_front\";b:1;s:5:\"pages\";b:1;s:5:\"feeds\";b:1;s:7:\"ep_mask\";i:1;}s:8:\"supports\";N;s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";b:0;}}','yes'),(930,'custom_permalinks_plugin_version','1.3.0','yes'),(935,'wpseo_sitemap_cache_validator_global','5rPWt','no'),(939,'fl_notifications','a:3:{s:4:\"read\";b:1;s:8:\"checksum\";a:6:{i:375859;i:1690867192;i:352086;i:1712285855;i:347444;i:2016001167;i:344408;i:4147876357;i:337380;i:61041398;i:333965;i:4130695;}s:4:\"data\";s:11487:\"[{\"id\":375859,\"date\":\"2018-07-11T12:30:14\",\"date_gmt\":\"2018-07-11T19:30:14\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=375859\"},\"modified\":\"2018-07-11T12:30:14\",\"modified_gmt\":\"2018-07-11T19:30:14\",\"slug\":\"summer-update-sneak-peaks-new-features-and-more\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=summer-update-sneak-peaks-new-features-and-more\",\"title\":{\"rendered\":\"Summer Update \\u2013 Sneak Peaks, New Features, and More\"},\"content\":{\"rendered\":\"<p><img class=\\\"aligncenter size-full wp-image-375874\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/07\\/bb-summer-2018.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/07\\/bb-summer-2018.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/07\\/bb-summer-2018-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>Hope you\'re having a great summer! We have updates and alpha versions across the board\\u2014Page Builder, Beaver Themer, and the BB Theme are all getting some exciting new features and enhancements.<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/summer-update-sneak-peaks-new-features-and-more\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/375859\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=375859\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":352086,\"date\":\"2018-04-26T11:28:42\",\"date_gmt\":\"2018-04-26T18:28:42\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=352086\"},\"modified\":\"2018-04-26T11:28:42\",\"modified_gmt\":\"2018-04-26T18:28:42\",\"slug\":\"happy-4th-birthday-to-beaver-builder\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=happy-4th-birthday-to-beaver-builder\",\"title\":{\"rendered\":\"Happy 4th Birthday to Beaver Builder\"},\"content\":{\"rendered\":\"<p><img class=\\\"aligncenter size-full wp-image-352087\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/bday-notification.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/bday-notification.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/bday-notification-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>For the last few years, we\\u2019ve made a point to celebrate our birthday here at\\u00a0Beaver Builder. It\\u2019s hard to believe, since starting this journey from client work to products, a whole four years have gone by.<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/happy-4th-birthday-to-beaver-builder\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/352086\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=352086\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":347444,\"date\":\"2018-04-04T16:27:13\",\"date_gmt\":\"2018-04-04T23:27:13\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=347444\"},\"modified\":\"2018-04-04T16:27:13\",\"modified_gmt\":\"2018-04-04T23:27:13\",\"slug\":\"beaver-builder-2-1-redridge\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=beaver-builder-2-1-redridge\",\"title\":{\"rendered\":\"Beaver Builder 2.1 &#8220;Redridge&#8221;\"},\"content\":{\"rendered\":\"<p><img class=\\\"aligncenter size-full wp-image-347445\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/redridge-notification-normal.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/redridge-notification-normal.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/04\\/redridge-notification-normal-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>Beaver Builder 2.1 &#8220;Redridge&#8221; introduces a TON of new features and workflow improvements. If you\'re reading this, our new notification center here is one of them! Redridge also brings inline editing, saved columns, Gutenberg support, code validation, and a whole lot more. Click here to check out our release post and learn about all the new goodies.<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/beaver-builder-2-1-redridge\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/347444\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=347444\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":344408,\"date\":\"2018-03-22T10:40:12\",\"date_gmt\":\"2018-03-22T17:40:12\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=344408\"},\"modified\":\"2018-03-22T10:51:16\",\"modified_gmt\":\"2018-03-22T17:51:16\",\"slug\":\"beaver-builder-team-ask-us-anything\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=beaver-builder-team-ask-us-anything\",\"title\":{\"rendered\":\"Beaver Builder Team Ask Us Anything\"},\"content\":{\"rendered\":\"<p><img class=\\\"aligncenter size-full wp-image-344409\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/03\\/ama-notification.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/03\\/ama-notification.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/03\\/ama-notification-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>In our latest update, Billy, Brent, Justin, and Robby sit down and answer your questions in video format! We also discuss the 2.1 alpha (which you\'re probably aware of if you\'re reading this notification\\u00a0\\ud83d\\ude02) and a lot more&#8230;<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/ask-us-anything-ama-update-post\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/344408\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=344408\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":337380,\"date\":\"2018-02-21T10:41:52\",\"date_gmt\":\"2018-02-21T18:41:52\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=337380\"},\"modified\":\"2018-02-21T10:41:52\",\"modified_gmt\":\"2018-02-21T18:41:52\",\"slug\":\"48-websites-48-hours\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=48-websites-48-hours\",\"title\":{\"rendered\":\"48 Websites in 48 Hours\"},\"content\":{\"rendered\":\"<p><img class=\\\"size-full wp-image-337381 aligncenter\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/02\\/48in48-case-study-notification.jpg\\\" alt=\\\"\\\" width=\\\"318\\\" height=\\\"139\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/02\\/48in48-case-study-notification.jpg 318w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/02\\/48in48-case-study-notification-300x131.jpg 300w\\\" sizes=\\\"(max-width: 318px) 100vw, 318px\\\" \\/><\\/p>\\n<p>Check out this story about how our friends at 48in48 use\\u00a0Beaver Builder to create 48 nonprofit websites in 48 hours at their events hosted throughout the world.<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\\/48in48-case-study-building-48-websites-nonprofits-48-hours\\/\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/337380\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=337380\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}},{\"id\":333965,\"date\":\"2018-02-06T11:54:04\",\"date_gmt\":\"2018-02-06T19:54:04\",\"guid\":{\"rendered\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?post_type=fl_notification&#038;p=333965\"},\"modified\":\"2018-02-15T12:09:49\",\"modified_gmt\":\"2018-02-15T20:09:49\",\"slug\":\"welcome-2-1-alpha\",\"status\":\"publish\",\"type\":\"fl_notification\",\"link\":\"https:\\/\\/www.wpbeaverbuilder.com\\/?fl_notification=welcome-2-1-alpha\",\"title\":{\"rendered\":\"Welcome to 2.1 Alpha!\"},\"content\":{\"rendered\":\"<p><a href=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/01\\/thick-beaver.png\\\"><img class=\\\"size-full wp-image-332142 alignleft\\\" src=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/01\\/thick-beaver.png\\\" alt=\\\"\\\" width=\\\"80\\\" height=\\\"80\\\" srcset=\\\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/01\\/thick-beaver.png 80w, https:\\/\\/www.wpbeaverbuilder.com\\/wp-content\\/uploads\\/2018\\/01\\/thick-beaver-45x45.png 45w\\\" sizes=\\\"(max-width: 80px) 100vw, 80px\\\" \\/><\\/a>\\u00a0Hey there! Thank you so much for installing the latest alpha build of\\u00a0Beaver Builder. This is our new notification center! The plan here is to make it easier for us to communicate with\\u00a0<em>you.<\\/em> From here, we can share news about updates and new features, share our blog posts and tutorials, and push out helpful information to everyone using\\u00a0Beaver Builder.<\\/p>\\n<p>During the alpha period, we will be testing the notification center here. We may send out videos, or blogs posts, or different types of content for testing purposes. We\'ll do our best to keep them informative and entertaining, but do be aware that, for the most part, these will be &#8220;alpha&#8221; notifications. Thanks, again!<\\/p>\\n\",\"protected\":false},\"template\":\"\",\"meta\":{\"_fl_notification\":[\"https:\\/\\/www.wpbeaverbuilder.com\"]},\"_links\":{\"self\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\\/333965\"}],\"collection\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/fl_notification\"}],\"about\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/types\\/fl_notification\"}],\"wp:attachment\":[{\"href\":\"https:\\/\\/www.wpbeaverbuilder.com\\/wp-json\\/wp\\/v2\\/media?parent=333965\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https:\\/\\/api.w.org\\/{rel}\",\"templated\":true}]}}]\";}','yes'),(948,'gf_upgrade_lock','','yes'),(955,'_fl_builder_update_info','a:2:{s:4:\"from\";s:7:\"2.1.2.4\";s:2:\"to\";s:7:\"2.1.4.3\";}','no'),(970,'wpseo_sitemap_1_cache_validator','5qsmn','no'),(971,'wpseo_sitemap_author_cache_validator','5r9JD','no'),(991,'wpseo_sitemap_post_cache_validator','5qsmr','no'),(1002,'wpseo_sitemap_page_cache_validator','6o93c','no'),(1381,'gf_dismissed_upgrades','a:1:{i:0;s:5:\"2.3.3\";}','yes'),(1387,'gf_db_version','2.3.3','yes'),(1388,'rewrite_rules','a:129:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:46:\"category/(.+?)/paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:55:\"index.php?category_name=$matches[1]&flpaged=$matches[2]\";s:43:\"tag/([^/]+)/paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:45:\"index.php?tag=$matches[1]&flpaged=$matches[2]\";s:42:\"([0-9]{4})/paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:46:\"index.php?year=$matches[1]&flpaged=$matches[2]\";s:55:\"([0-9]{4})/([0-9]{1,2})/paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:67:\"index.php?year=$matches[1]&monthnum=$matches[2]&flpaged=$matches[3]\";s:68:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:83:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&flpaged=$matches[4]\";s:46:\"author/([^/]+)/paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:53:\"index.php?author_name=$matches[1]&flpaged=$matches[2]\";s:40:\"([0-9]+)/paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:43:\"index.php?p=$matches[1]&flpaged=$matches[2]\";s:39:\"(.?.+?)/paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:50:\"index.php?pagename=$matches[1]&flpaged=$matches[2]\";s:37:\"(.+?)/paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:46:\"index.php?name=$matches[1]&flpaged=$matches[2]\";s:26:\"paged-[0-9]{1,}/([0-9]*)/?\";s:40:\"index.php?page_id=12&flpaged=$matches[1]\";s:31:\"paged-[0-9]{1,}/?([0-9]{1,})/?$\";s:30:\"index.php?&flpaged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"fl-builder-template/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"fl-builder-template/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"fl-builder-template/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"fl-builder-template/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"fl-builder-template/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"fl-builder-template/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"fl-builder-template/([^/]+)/embed/?$\";s:52:\"index.php?fl-builder-template=$matches[1]&embed=true\";s:40:\"fl-builder-template/([^/]+)/trackback/?$\";s:46:\"index.php?fl-builder-template=$matches[1]&tb=1\";s:48:\"fl-builder-template/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?fl-builder-template=$matches[1]&paged=$matches[2]\";s:55:\"fl-builder-template/([^/]+)/comment-page-([0-9]{1,})/?$\";s:59:\"index.php?fl-builder-template=$matches[1]&cpage=$matches[2]\";s:44:\"fl-builder-template/([^/]+)(?:/([0-9]+))?/?$\";s:58:\"index.php?fl-builder-template=$matches[1]&page=$matches[2]\";s:36:\"fl-builder-template/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"fl-builder-template/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"fl-builder-template/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"fl-builder-template/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"fl-builder-template/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"fl-builder-template/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:69:\"fl-builder-template-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?fl-builder-template-category=$matches[1]&feed=$matches[2]\";s:64:\"fl-builder-template-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?fl-builder-template-category=$matches[1]&feed=$matches[2]\";s:45:\"fl-builder-template-category/([^/]+)/embed/?$\";s:61:\"index.php?fl-builder-template-category=$matches[1]&embed=true\";s:57:\"fl-builder-template-category/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?fl-builder-template-category=$matches[1]&paged=$matches[2]\";s:39:\"fl-builder-template-category/([^/]+)/?$\";s:50:\"index.php?fl-builder-template-category=$matches[1]\";s:65:\"fl-builder-template-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?fl-builder-template-type=$matches[1]&feed=$matches[2]\";s:60:\"fl-builder-template-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?fl-builder-template-type=$matches[1]&feed=$matches[2]\";s:41:\"fl-builder-template-type/([^/]+)/embed/?$\";s:57:\"index.php?fl-builder-template-type=$matches[1]&embed=true\";s:53:\"fl-builder-template-type/([^/]+)/page/?([0-9]{1,})/?$\";s:64:\"index.php?fl-builder-template-type=$matches[1]&paged=$matches[2]\";s:35:\"fl-builder-template-type/([^/]+)/?$\";s:46:\"index.php?fl-builder-template-type=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (42,12,'_edit_last','3'),(43,12,'_wp_page_template','homepage.php'),(44,12,'_yoast_wpseo_content_score','30'),(45,12,'_edit_lock','1523473477:3'),(95,17,'_edit_last','3'),(96,17,'_wp_page_template','default'),(97,17,'_yoast_wpseo_content_score','30'),(98,17,'_edit_lock','1526677990:3'),(99,18,'_edit_last','3'),(100,18,'_wp_page_template','default'),(101,18,'_yoast_wpseo_content_score','30'),(102,18,'_edit_lock','1526677999:3'),(103,19,'_edit_last','3'),(104,19,'_wp_page_template','default'),(105,19,'_yoast_wpseo_content_score','30'),(106,19,'_edit_lock','1526678009:3'),(107,20,'_edit_last','3'),(108,20,'_wp_page_template','default'),(109,20,'_yoast_wpseo_content_score','30'),(110,20,'_edit_lock','1526678019:3'),(111,21,'_edit_lock','1526678040:3'),(112,21,'_edit_last','3'),(113,21,'_wp_page_template','default'),(114,21,'_yoast_wpseo_content_score','30'),(115,22,'_menu_item_type','post_type'),(116,22,'_menu_item_menu_item_parent','0'),(117,22,'_menu_item_object_id','21'),(118,22,'_menu_item_object','page'),(119,22,'_menu_item_target',''),(120,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(121,22,'_menu_item_xfn',''),(122,22,'_menu_item_url',''),(124,23,'_menu_item_type','post_type'),(125,23,'_menu_item_menu_item_parent','0'),(126,23,'_menu_item_object_id','20'),(127,23,'_menu_item_object','page'),(128,23,'_menu_item_target',''),(129,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(130,23,'_menu_item_xfn',''),(131,23,'_menu_item_url',''),(133,24,'_menu_item_type','post_type'),(134,24,'_menu_item_menu_item_parent','0'),(135,24,'_menu_item_object_id','19'),(136,24,'_menu_item_object','page'),(137,24,'_menu_item_target',''),(138,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(139,24,'_menu_item_xfn',''),(140,24,'_menu_item_url',''),(142,25,'_menu_item_type','post_type'),(143,25,'_menu_item_menu_item_parent','0'),(144,25,'_menu_item_object_id','18'),(145,25,'_menu_item_object','page'),(146,25,'_menu_item_target',''),(147,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(148,25,'_menu_item_xfn',''),(149,25,'_menu_item_url',''),(151,26,'_menu_item_type','post_type'),(152,26,'_menu_item_menu_item_parent','0'),(153,26,'_menu_item_object_id','17'),(154,26,'_menu_item_object','page'),(155,26,'_menu_item_target',''),(156,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(157,26,'_menu_item_xfn',''),(158,26,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2017-06-20 20:39:42','2017-06-20 20:39:42','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world!','','publish','open','open','','hello-world','','','2017-06-20 20:39:42','2017-06-20 20:39:42','',0,'http://wpengine.com8/?p=1',0,'post','',1),(12,3,'2018-04-11 19:06:55','2018-04-11 19:06:55','','Home','','publish','closed','closed','','home','','','2018-04-11 19:06:55','2018-04-11 19:06:55','',0,'http://kaplan2018.wpengine.com/?page_id=12',0,'page','',0),(17,3,'2018-05-18 21:15:30','2018-05-18 21:15:30','','About Us','','publish','closed','closed','','about-us','','','2018-05-18 21:15:30','2018-05-18 21:15:30','',0,'http://kaplan2018.wpengine.com/?page_id=17',0,'page','',0),(18,3,'2018-05-18 21:15:40','2018-05-18 21:15:40','','Services','','publish','closed','closed','','services','','','2018-05-18 21:15:40','2018-05-18 21:15:40','',0,'http://kaplan2018.wpengine.com/?page_id=18',0,'page','',0),(19,3,'2018-05-18 21:15:50','2018-05-18 21:15:50','','Portfolio','','publish','closed','closed','','portfolio','','','2018-05-18 21:15:50','2018-05-18 21:15:50','',0,'http://kaplan2018.wpengine.com/?page_id=19',0,'page','',0),(20,3,'2018-05-18 21:15:58','2018-05-18 21:15:58','','Blog','','publish','closed','closed','','blog','','','2018-05-18 21:15:58','2018-05-18 21:15:58','',0,'http://kaplan2018.wpengine.com/?page_id=20',0,'page','',0),(21,3,'2018-05-18 21:16:11','2018-05-18 21:16:11','','Contact Us','','publish','closed','closed','','contact-us','','','2018-05-18 21:16:11','2018-05-18 21:16:11','',0,'http://kaplan2018.wpengine.com/?page_id=21',0,'page','',0),(22,3,'2018-05-18 21:17:14','2018-05-18 21:17:14',' ','','','publish','closed','closed','','22','','','2018-05-18 21:17:14','2018-05-18 21:17:14','',0,'http://kaplan2018.wpengine.com/?p=22',5,'nav_menu_item','',0),(23,3,'2018-05-18 21:17:14','2018-05-18 21:17:14',' ','','','publish','closed','closed','','23','','','2018-05-18 21:17:14','2018-05-18 21:17:14','',0,'http://kaplan2018.wpengine.com/?p=23',4,'nav_menu_item','',0),(24,3,'2018-05-18 21:17:14','2018-05-18 21:17:14',' ','','','publish','closed','closed','','24','','','2018-05-18 21:17:14','2018-05-18 21:17:14','',0,'http://kaplan2018.wpengine.com/?p=24',3,'nav_menu_item','',0),(25,3,'2018-05-18 21:17:14','2018-05-18 21:17:14',' ','','','publish','closed','closed','','25','','','2018-05-18 21:17:14','2018-05-18 21:17:14','',0,'http://kaplan2018.wpengine.com/?p=25',2,'nav_menu_item','',0),(26,3,'2018-05-18 21:17:14','2018-05-18 21:17:14',' ','','','publish','closed','closed','','26','','','2018-05-18 21:17:14','2018-05-18 21:17:14','',0,'http://kaplan2018.wpengine.com/?p=26',1,'nav_menu_item','',0),(28,3,'2018-08-23 16:59:19','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2018-08-23 16:59:19','0000-00-00 00:00:00','',0,'http://kaplan2018.wpengine.com/?p=28',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_realmedialibrary`
--

DROP TABLE IF EXISTS `wp_realmedialibrary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_realmedialibrary` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `parent` mediumint(9) NOT NULL DEFAULT '-1',
  `name` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `absolute` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bid` mediumint(10) NOT NULL DEFAULT '1',
  `ord` mediumint(10) NOT NULL DEFAULT '0',
  `type` mediumint(2) NOT NULL DEFAULT '0',
  `restrictions` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cnt` mediumint(10) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_realmedialibrary`
--

LOCK TABLES `wp_realmedialibrary` WRITE;
/*!40000 ALTER TABLE `wp_realmedialibrary` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_realmedialibrary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_realmedialibrary_meta`
--

DROP TABLE IF EXISTS `wp_realmedialibrary_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_realmedialibrary_meta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `realmedialibrary_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `realmedialibrary_id` (`realmedialibrary_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_realmedialibrary_meta`
--

LOCK TABLES `wp_realmedialibrary_meta` WRITE;
/*!40000 ALTER TABLE `wp_realmedialibrary_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_realmedialibrary_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_realmedialibrary_order`
--

DROP TABLE IF EXISTS `wp_realmedialibrary_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_realmedialibrary_order` (
  `attachment` bigint(20) NOT NULL,
  `fid` mediumint(9) DEFAULT '-1',
  `nr` bigint(20) DEFAULT NULL,
  `oldCustomNr` bigint(20) DEFAULT NULL,
  UNIQUE KEY `rmlorder` (`attachment`,`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_realmedialibrary_order`
--

LOCK TABLES `wp_realmedialibrary_order` WRITE;
/*!40000 ALTER TABLE `wp_realmedialibrary_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_realmedialibrary_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_realmedialibrary_posts`
--

DROP TABLE IF EXISTS `wp_realmedialibrary_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_realmedialibrary_posts` (
  `attachment` bigint(20) NOT NULL,
  `fid` mediumint(9) NOT NULL DEFAULT '-1',
  `isShortcut` mediumint(9) NOT NULL DEFAULT '0',
  `bid` mediumint(10) NOT NULL DEFAULT '1',
  UNIQUE KEY `rmlorder` (`attachment`,`isShortcut`,`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_realmedialibrary_posts`
--

LOCK TABLES `wp_realmedialibrary_posts` WRITE;
/*!40000 ALTER TABLE `wp_realmedialibrary_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_realmedialibrary_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rg_form`
--

DROP TABLE IF EXISTS `wp_rg_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_form`
--

LOCK TABLES `wp_rg_form` WRITE;
/*!40000 ALTER TABLE `wp_rg_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rg_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rg_form_meta`
--

DROP TABLE IF EXISTS `wp_rg_form_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_520_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_520_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_form_meta`
--

LOCK TABLES `wp_rg_form_meta` WRITE;
/*!40000 ALTER TABLE `wp_rg_form_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rg_form_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rg_form_view`
--

DROP TABLE IF EXISTS `wp_rg_form_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `date_created` (`date_created`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_form_view`
--

LOCK TABLES `wp_rg_form_view` WRITE;
/*!40000 ALTER TABLE `wp_rg_form_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rg_form_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rg_incomplete_submissions`
--

DROP TABLE IF EXISTS `wp_rg_incomplete_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_incomplete_submissions`
--

LOCK TABLES `wp_rg_incomplete_submissions` WRITE;
/*!40000 ALTER TABLE `wp_rg_incomplete_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rg_incomplete_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rg_lead`
--

DROP TABLE IF EXISTS `wp_rg_lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_lead`
--

LOCK TABLES `wp_rg_lead` WRITE;
/*!40000 ALTER TABLE `wp_rg_lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rg_lead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rg_lead_detail`
--

DROP TABLE IF EXISTS `wp_rg_lead_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_lead_detail`
--

LOCK TABLES `wp_rg_lead_detail` WRITE;
/*!40000 ALTER TABLE `wp_rg_lead_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rg_lead_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rg_lead_detail_long`
--

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_lead_detail_long`
--

LOCK TABLES `wp_rg_lead_detail_long` WRITE;
/*!40000 ALTER TABLE `wp_rg_lead_detail_long` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rg_lead_detail_long` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rg_lead_meta`
--

DROP TABLE IF EXISTS `wp_rg_lead_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_lead_meta`
--

LOCK TABLES `wp_rg_lead_meta` WRITE;
/*!40000 ALTER TABLE `wp_rg_lead_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rg_lead_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_rg_lead_notes`
--

DROP TABLE IF EXISTS `wp_rg_lead_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_rg_lead_notes`
--

LOCK TABLES `wp_rg_lead_notes` WRITE;
/*!40000 ALTER TABLE `wp_rg_lead_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_rg_lead_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_search_filter_cache`
--

DROP TABLE IF EXISTS `wp_search_filter_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_search_filter_cache` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `post_parent_id` bigint(20) NOT NULL,
  `field_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_value` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_value_num` bigint(20) DEFAULT NULL,
  `field_parent_num` bigint(20) DEFAULT NULL,
  `term_parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_name_index` (`field_name`(191)),
  KEY `field_value_index` (`field_value`(191)),
  KEY `field_value_num_index` (`field_value_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_search_filter_cache`
--

LOCK TABLES `wp_search_filter_cache` WRITE;
/*!40000 ALTER TABLE `wp_search_filter_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_search_filter_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_search_filter_term_results`
--

DROP TABLE IF EXISTS `wp_search_filter_term_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_search_filter_term_results` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_value` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_value_num` bigint(20) DEFAULT NULL,
  `result_ids` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_name_index` (`field_name`(191)),
  KEY `field_value_index` (`field_value`(191)),
  KEY `field_value_num_index` (`field_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_search_filter_term_results`
--

LOCK TABLES `wp_search_filter_term_results` WRITE;
/*!40000 ALTER TABLE `wp_search_filter_term_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_search_filter_term_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(22,2,0),(23,2,0),(24,2,0),(25,2,0),(26,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Navigation','navigation',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','wpengine'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description','This is the \"wpengine\" admin user that our staff uses to gain access to your admin area to provide support and troubleshooting. It can only be accessed by a button in our secure log that auto generates a password and dumps that password after the staff member has logged in. We have taken extreme measures to ensure that our own user is not going to be misused to harm any of our clients sites.'),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'locale',''),(11,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(12,1,'wp_user_level','10'),(13,1,'dismissed_wp_pointers',''),(14,1,'show_welcome_panel','1'),(15,2,'nickname','alex'),(16,2,'first_name',''),(17,2,'last_name',''),(18,2,'description',''),(19,2,'rich_editing','true'),(20,2,'comment_shortcuts','false'),(21,2,'admin_color','fresh'),(22,2,'use_ssl','0'),(23,2,'show_admin_bar_front','true'),(24,2,'locale',''),(25,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(26,2,'wp_user_level','10'),(27,2,'default_password_nag',''),(28,2,'session_tokens','a:1:{s:64:\"a532da4b1500feac54d5d3a9db1415c94957bf732c5a8c37e0b37530f82dcecf\";a:4:{s:10:\"expiration\";i:1499003957;s:2:\"ip\";s:12:\"73.23.255.95\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36\";s:5:\"login\";i:1498831157;}}'),(29,2,'wp_dashboard_quick_press_last_post_id','3'),(30,2,'community-events-location','a:1:{s:2:\"ip\";s:11:\"73.23.255.0\";}'),(31,3,'nickname','trenton'),(32,3,'first_name','Trenton'),(33,3,'last_name','Elkins'),(34,3,'description',''),(35,3,'rich_editing','true'),(36,3,'comment_shortcuts','false'),(37,3,'admin_color','fresh'),(38,3,'use_ssl','0'),(39,3,'show_admin_bar_front','false'),(40,3,'locale',''),(41,3,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(42,3,'wp_user_level','10'),(43,3,'dismissed_wp_pointers','wp496_privacy'),(44,2,'itsec_user_activity_last_seen','1498833641'),(45,2,'search-filter-show-welcome-notice','1'),(46,3,'session_tokens','a:1:{s:64:\"a29d65c36e15e80e953a957f63a1a2026bf22107234cce6f5b810375516d470d\";a:4:{s:10:\"expiration\";i:1535216357;s:2:\"ip\";s:12:\"73.23.89.171\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535043557;}}'),(47,3,'search-filter-show-welcome-notice','1'),(48,3,'wp_dashboard_quick_press_last_post_id','28'),(49,3,'itsec_user_activity_last_seen','1535043559'),(50,3,'community-events-location','a:1:{s:2:\"ip\";s:10:\"73.23.89.0\";}'),(51,3,'wp_yoast_notifications','a:5:{i:0;a:2:{s:7:\"message\";s:139:\"Since you are new to Yoast SEO you can configure the <a href=\"https://kaplan2018.wpengine.com/wp-admin/?page=wpseo_configurator\">plugin</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"wpseo-dismiss-onboarding-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:14:\"manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:549:\"To make sure all the links in your texts are counted, we need to analyze all your texts.\n					All you have to do is press the following button and we\'ll go through all your texts for you.\n\n					<button type=\"button\" id=\"noticeRunLinkIndex\" class=\"button\">Count links</button>\n\n					The Text link counter feature provides insights in how many links are found in your text and how many links are referring to your text. This is very helpful when you are improving your <a href=\"https://yoa.st/15m?utm_content=5.4\" target=\"_blank\">internal linking</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-reindex-links\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:14:\"manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:539:\"Yoast SEO and Advanced Custom Fields can work together a lot better by adding a helper plugin. Please install <a href=\"https://kaplan2018.wpengine.com/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=a68e481247\">ACF Content Analysis for Yoast SEO</a> to make your life better. <a href=\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\" aria-label=\"More information about ACF Content Analysis for Yoast SEO\" target=\"_blank\" rel=\"noopener noreferrer\">More information</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:41:\"wpseo-suggested-plugin-yoast-acf-analysis\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:1125:\"We\'ve noticed you\'ve been using Yoast SEO for some time now; we hope you love it! We\'d be thrilled if you could <a href=\"https://yoa.st/rate-yoast-seo?php_version=5.6.36&platform=wordpress&platform_version=4.9.8&software=free&software_version=8.0&role=administrator&days_active=135\">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href=\"https://yoa.st/bugreport?php_version=5.6.36&platform=wordpress&platform_version=4.9.8&software=free&software_version=8.0&role=administrator&days_active=135\">please file a bug report</a> and we\'ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=\'https://yoa.st/premium-notification?php_version=5.6.36&platform=wordpress&platform_version=4.9.8&software=free&software_version=8.0&role=administrator&days_active=135\'>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class=\"button\" href=\"https://kaplan2018.wpengine.com/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:4;a:2:{s:7:\"message\";s:174:\"Don\'t miss your crawl errors: <a href=\"https://kaplan2018.wpengine.com/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),(66,3,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(67,3,'metaboxhidden_nav-menus','a:3:{i:0;s:25:\"add-post-type-testimonial\";i:1;s:12:\"add-post_tag\";i:2;s:32:\"add-fl-builder-template-category\";}'),(68,3,'nav_menu_recently_edited','2'),(69,3,'_yoast_wpseo_profile_updated','1505404044'),(70,3,'wpseo_title',''),(71,3,'wpseo_metadesc',''),(72,3,'wpseo_metakey',''),(73,3,'wpseo_noindex_author',''),(74,3,'wpseo_content_analysis_disable',''),(75,3,'wpseo_keyword_analysis_disable',''),(76,3,'googleplus',''),(77,3,'twitter',''),(78,3,'facebook',''),(79,5,'nickname','theron'),(80,5,'first_name','Theron'),(81,5,'last_name','Fly'),(82,5,'description',''),(83,5,'rich_editing','true'),(84,5,'comment_shortcuts','false'),(85,5,'admin_color','fresh'),(86,5,'use_ssl','0'),(87,5,'show_admin_bar_front','true'),(88,5,'locale',''),(89,5,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(90,5,'wp_user_level','10'),(91,5,'_yoast_wpseo_profile_updated','1506020833'),(92,5,'dismissed_wp_pointers',''),(93,1,'itsec_last_password_change','1521754794'),(94,1,'syntax_highlighting','true'),(95,1,'itsec_user_activity_last_seen','1520539949'),(96,2,'itsec_user_activity_last_seen_notification_sent','1'),(97,3,'itsec-settings-view','grid'),(98,1,'googleplus',''),(99,1,'twitter',''),(100,1,'facebook',''),(102,1,'itsec_user_activity_last_seen_notification_sent','1'),(103,3,'itsec-password-strength','4'),(104,6,'nickname','kira'),(105,6,'first_name','kira'),(106,6,'last_name','elkins'),(107,6,'description',''),(108,6,'rich_editing','true'),(109,6,'syntax_highlighting','true'),(110,6,'comment_shortcuts','false'),(111,6,'admin_color','fresh'),(112,6,'use_ssl','0'),(113,6,'show_admin_bar_front','true'),(114,6,'locale',''),(115,6,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(116,6,'wp_user_level','10'),(117,6,'_yoast_wpseo_profile_updated','1524609906'),(118,6,'dismissed_wp_pointers',''),(119,2,'_yoast_wpseo_profile_updated','1526678732'),(120,1,'_yoast_wpseo_profile_updated','1526678732'),(121,7,'nickname','andy'),(122,7,'first_name','Andy'),(123,7,'last_name','Newton'),(124,7,'description',''),(125,7,'rich_editing','true'),(126,7,'syntax_highlighting','true'),(127,7,'comment_shortcuts','false'),(128,7,'admin_color','fresh'),(129,7,'use_ssl','0'),(130,7,'show_admin_bar_front','true'),(131,7,'locale',''),(132,7,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(133,7,'wp_user_level','10'),(134,7,'dismissed_wp_pointers','wp496_privacy'),(135,7,'_yoast_wpseo_profile_updated','1528995717'),(136,3,'show_try_gutenberg_panel','0'),(137,3,'show_welcome_panel','0'),(138,3,'closedpostboxes_dashboard','a:8:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:18:\"wpe_dify_news_feed\";i:3;s:18:\"rg_forms_dashboard\";i:4;s:22:\"itsec-dashboard-widget\";i:5;s:24:\"wpseo-dashboard-overview\";i:6;s:21:\"dashboard_quick_press\";i:7;s:17:\"dashboard_primary\";}'),(139,3,'metaboxhidden_dashboard','a:3:{i:0;s:29:\"itsec_lockout_summary_postbox\";i:1;s:26:\"itsec_lockout_host_postbox\";i:2;s:26:\"itsec_lockout_user_postbox\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'wpengine','$P$BPheFhu/1IdQyJtkaDi.rggYOs2LwJ0','wpengine','bitbucket@wpengine.com','http://wpengine.com','2017-06-20 20:39:42','',0,'wpengine'),(2,'alex','$P$BvzQox08STKHX.Zrx8Z1X3H1lwBq4B.','alex','alex@neoncanvas.com','http://kaplan2018.wpengine.com','2017-06-29 22:22:36','',0,'alex'),(3,'trenton','$P$BWX87cEHgB7ObyidpkuyLeNl3YsWSn0','trenton','trenton@neoncanvas.com','','2017-06-30 14:38:43','',0,'Trenton Elkins'),(5,'theron','$P$Bx8tJh8iruwSjdLZB0YOFP04Feg40J1','theron','theron@neoncanvas.com','','2017-09-21 19:07:13','1506020833:$P$Bh2ApdkywbKJRE3Iqbr4jiE8aS77ja1',0,'Theron Fly'),(6,'kira','$P$BiRVZNycOAAmG8QrCs7IZ.7QHg5xL7/','kira','kira@neoncanvas.com','','2018-04-24 22:45:06','1524609906:$P$Brpdi3zsD6cHbs6hOq2.B0vJNUNWJS/',0,'kira elkins'),(7,'andy','$P$B7fvvuIhWkzn3IPtwwDKNhSsXkaVYc1','andy','andy@neoncanvas.com','','2018-06-14 17:01:57','',0,'Andy Newton');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wbz404_logs`
--

DROP TABLE IF EXISTS `wp_wbz404_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wbz404_logs` (
  `id` bigint(40) NOT NULL AUTO_INCREMENT,
  `redirect_id` bigint(40) NOT NULL,
  `timestamp` bigint(40) NOT NULL,
  `remote_host` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `referrer` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `redirect_id` (`redirect_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='404 Redirected Plugin Logs Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wbz404_logs`
--

LOCK TABLES `wp_wbz404_logs` WRITE;
/*!40000 ALTER TABLE `wp_wbz404_logs` DISABLE KEYS */;
INSERT INTO `wp_wbz404_logs` VALUES (1,1,1520547031,'173.255.233.124','http://sucuri.net','404');
/*!40000 ALTER TABLE `wp_wbz404_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wbz404_redirects`
--

DROP TABLE IF EXISTS `wp_wbz404_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wbz404_redirects` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` bigint(20) NOT NULL,
  `type` bigint(20) NOT NULL,
  `final_dest` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `code` bigint(20) NOT NULL,
  `disabled` int(10) NOT NULL DEFAULT '0',
  `timestamp` bigint(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `code` (`code`),
  KEY `timestamp` (`timestamp`),
  KEY `disabled` (`disabled`),
  FULLTEXT KEY `url` (`url`),
  FULLTEXT KEY `final_dest` (`final_dest`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='404 Redirected Plugin Redirects Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wbz404_redirects`
--

LOCK TABLES `wp_wbz404_redirects` WRITE;
/*!40000 ALTER TABLE `wp_wbz404_redirects` DISABLE KEYS */;
INSERT INTO `wp_wbz404_redirects` VALUES (1,'/404testpage4525d2fdc',3,0,'0',301,0,1520547031);
/*!40000 ALTER TABLE `wp_wbz404_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_meta`
--

DROP TABLE IF EXISTS `wp_yoast_seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

LOCK TABLES `wp_yoast_seo_meta` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_meta` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_meta` VALUES (2,0,0),(5,0,0),(6,0,0),(7,0,0),(8,0,0),(9,0,0),(10,0,0),(11,0,0),(12,0,0),(13,0,0),(14,0,0),(15,0,0),(16,0,0),(17,0,0),(18,0,0),(19,0,0),(20,0,0),(21,0,0),(27,0,0);
/*!40000 ALTER TABLE `wp_yoast_seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'wp_kaplan2018'
--

--
-- Dumping routines for database 'wp_kaplan2018'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
