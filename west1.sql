-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 23, 2018 at 09:02 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `west1`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-15 15:09:36', '2018-03-15 18:09:36', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/west1', 'yes'),
(2, 'home', 'http://localhost/west1', 'yes'),
(3, 'blogname', 'West 1', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pablo.cunha.dantas@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:47:\"wp-accurate-geolocation/wp-accu-geolocation.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:81:\"/Applications/XAMPP/xamppfiles/htdocs/west1/wp-content/themes/west1/functions.php\";i:2;s:77:\"/Applications/XAMPP/xamppfiles/htdocs/west1/wp-content/themes/west1/style.css\";i:3;s:97:\"/Applications/XAMPP/xamppfiles/htdocs/west1/wp-content/themes/wpbrasil-odin-3fa0943/functions.php\";i:4;s:93:\"/Applications/XAMPP/xamppfiles/htdocs/west1/wp-content/themes/wpbrasil-odin-3fa0943/style.css\";i:5;s:0:\"\";}', 'no'),
(40, 'template', 'west1', 'yes'),
(41, 'stylesheet', 'west1', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '1', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1521871776;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521914986;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521919980;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(135, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521137400;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(136, 'current_theme', 'Odin', 'yes'),
(137, 'theme_mods_west1', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521142098;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(139, 'widget_odin_facebook_like_box', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'theme_mods_wpbrasil-odin-3fa0943', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521142211;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(312, '_site_transient_timeout_theme_roots', '1521830976', 'no'),
(313, '_site_transient_theme_roots', 'a:1:{s:5:\"west1\";s:7:\"/themes\";}', 'no'),
(315, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1521829177;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-03-22 18:30:41\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(316, '_site_transient_timeout_browser_f0d2477a5b6eb719524f2642ebe300d1', '1522433977', 'no'),
(317, '_site_transient_browser_f0d2477a5b6eb719524f2642ebe300d1', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"64.0.3282.167\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(318, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1521829178;s:7:\"checked\";a:1:{s:5:\"west1\";s:5:\"2.3.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(319, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1521829178;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:9:\"hello.php\";s:3:\"1.6\";s:47:\"wp-accurate-geolocation/wp-accu-geolocation.php\";s:5:\"1.0.0\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"wp-accurate-geolocation/wp-accu-geolocation.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/wp-accurate-geolocation\";s:4:\"slug\";s:23:\"wp-accurate-geolocation\";s:6:\"plugin\";s:47:\"wp-accurate-geolocation/wp-accu-geolocation.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/wp-accurate-geolocation/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/wp-accurate-geolocation.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(320, '_transient_timeout_plugin_slugs', '1521915627', 'no'),
(321, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:47:\"wp-accurate-geolocation/wp-accu-geolocation.php\";}', 'no'),
(322, 'recently_activated', 'a:0:{}', 'yes'),
(323, 'agl_settings', 'a:11:{s:14:\"gcp_maximumAge\";s:8:\"Infinity\";s:22:\"gcp_enableHighAccuracy\";s:4:\"true\";s:11:\"gcp_timeout\";i:6000;s:15:\"php_date_format\";s:11:\"Y-m-d H:i:s\";s:13:\"is_ask_onload\";s:3:\"yes\";s:14:\"is_ask_onclick\";s:3:\"yes\";s:11:\"is_db_store\";s:3:\"yes\";s:16:\"is_db_user_store\";s:3:\"yes\";s:15:\"is_cookie_store\";s:3:\"yes\";s:15:\"cookie_life_hrs\";i:24;s:14:\"plugin_enabled\";s:3:\"yes\";}', 'yes'),
(324, 'agl_data_5ab5487425c85_a204dd7674be78dd820b537456164a63', 'a:13:{s:8:\"latitude\";s:18:\"-7.118192800000001\";s:9:\"longitude\";s:11:\"-34.8370314\";s:8:\"altitude\";s:1:\"0\";s:8:\"accuracy\";s:2:\"20\";s:16:\"altitudeAccuracy\";s:1:\"0\";s:7:\"heading\";s:3:\"NaN\";s:5:\"speed\";s:3:\"NaN\";s:10:\"error_code\";s:0:\"\";s:13:\"error_message\";s:0:\"\";s:8:\"php_time\";i:1521830004;s:8:\"php_date\";s:19:\"2018-03-23 18:33:24\";s:15:\"php_date_format\";s:11:\"Y-m-d H:i:s\";s:7:\"user_id\";i:0;}', 'no'),
(325, 'agl_data_5ab54f761c20d_2f949189c6256cae8f8a2452187358b8', 'a:13:{s:8:\"latitude\";s:18:\"-7.118239999999999\";s:9:\"longitude\";s:10:\"-34.837035\";s:8:\"altitude\";s:3:\"NaN\";s:8:\"accuracy\";s:2:\"20\";s:16:\"altitudeAccuracy\";s:3:\"NaN\";s:7:\"heading\";s:3:\"NaN\";s:5:\"speed\";s:3:\"NaN\";s:10:\"error_code\";s:0:\"\";s:13:\"error_message\";s:0:\"\";s:8:\"php_time\";i:1521831798;s:8:\"php_date\";s:19:\"2018-03-23 19:03:18\";s:15:\"php_date_format\";s:11:\"Y-m-d H:i:s\";s:7:\"user_id\";i:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 13, '_edit_last', '1'),
(3, 13, '_edit_lock', '1521485942:1'),
(4, 14, '_wp_attached_file', '2018/03/shutterstock_83686699.jpg'),
(5, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3939;s:6:\"height\";i:2832;s:4:\"file\";s:33:\"2018/03/shutterstock_83686699.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"shutterstock_83686699-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"shutterstock_83686699-300x216.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"shutterstock_83686699-768x552.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:552;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"shutterstock_83686699-1024x736.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:736;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 13, 'imagem_header', '14'),
(7, 13, 'facebook', 'https://www.instagram.com/'),
(8, 13, 'instagram', 'https://www.instagram.com/'),
(9, 13, 'twitter', 'https://www.instagram.com/'),
(10, 13, 'introducao', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Texto de Introducao do país</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(11, 13, 'visao_geral', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Texto de visão geral do país</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(12, 13, 'clima', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Texto sobre o clima do país</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(13, 13, 'fatos_curiosidades', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Fatos e curiosidades do país</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(14, 13, 'economia', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Texto sobre a economia do país</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(15, 13, 'gastronomia', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Texto sobre a gastronomia do país</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(16, 13, 'governo_politica', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Governo e Política do país</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(17, 13, 'estilo_vida', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Estilo de vida do país</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(18, 13, 'historia', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">História do país</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(19, 13, 'fauna_flora', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Fauna e Flora</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(20, 13, 'custo_vida', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Custo de Vida</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(21, 13, 'transporte_publico', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Transporte Público</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(22, 13, 'links_uteis', '<table class=\"form-table odin-form-table\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td><span class=\"description\">Links Úteis</span></td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(23, 19, '_edit_last', '1'),
(24, 19, '_edit_lock', '1521482591:1'),
(25, 34, '_edit_last', '1'),
(26, 34, '_edit_lock', '1521735283:1'),
(27, 52, '_edit_last', '1'),
(28, 52, '_edit_lock', '1521485149:1'),
(29, 123, '_edit_last', '1'),
(30, 123, '_edit_lock', '1521739985:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-15 15:09:36', '2018-03-15 18:09:36', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2018-03-15 15:09:36', '2018-03-15 18:09:36', '', 0, 'http://localhost/west1/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-15 15:09:36', '2018-03-15 18:09:36', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/west1/wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2018-03-15 15:09:36', '2018-03-15 18:09:36', '', 0, 'http://localhost/west1/?page_id=2', 0, 'page', '', 0),
(10, 1, '2018-03-19 13:31:32', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 13:31:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=pais&p=10', 0, 'pais', '', 0),
(11, 1, '2018-03-19 13:36:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 13:36:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=pais&p=11', 0, 'pais', '', 0),
(12, 1, '2018-03-19 13:36:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 13:36:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=pais&p=12', 0, 'pais', '', 0),
(13, 1, '2018-03-19 14:01:06', '2018-03-19 17:01:06', '', 'Brasil', '', 'publish', 'closed', 'closed', '', 'brasil', '', '', '2018-03-19 14:01:06', '2018-03-19 17:01:06', '', 0, 'http://localhost/west1/?post_type=pais&#038;p=13', 0, 'pais', '', 0),
(14, 1, '2018-03-19 14:00:01', '2018-03-19 17:00:01', '', 'shutterstock_83686699', '', 'inherit', 'open', 'closed', '', 'shutterstock_83686699', '', '', '2018-03-19 14:00:01', '2018-03-19 17:00:01', '', 0, 'http://localhost/west1/wp-content/uploads/2018/03/shutterstock_83686699.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-03-19 14:20:51', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 14:20:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=15', 0, 'cidade', '', 0),
(16, 1, '2018-03-19 14:21:39', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 14:21:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=16', 0, 'cidade', '', 0),
(17, 1, '2018-03-19 14:22:52', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 14:22:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=17', 0, 'cidade', '', 0),
(18, 1, '2018-03-19 14:23:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 14:23:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=18', 0, 'cidade', '', 0),
(19, 1, '2018-03-19 15:05:32', '2018-03-19 18:05:32', '', 'teste', '', 'publish', 'closed', 'closed', '', 'teste', '', '', '2018-03-19 15:05:32', '2018-03-19 18:05:32', '', 0, 'http://localhost/west1/?post_type=cidade&#038;p=19', 0, 'cidade', '', 0),
(20, 1, '2018-03-19 15:08:55', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:08:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=20', 0, 'cidade', '', 0),
(21, 1, '2018-03-19 15:09:03', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:09:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=21', 0, 'cidade', '', 0),
(22, 1, '2018-03-19 15:10:58', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:10:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=22', 0, 'cidade', '', 0),
(23, 1, '2018-03-19 15:11:38', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:11:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=23', 0, 'cidade', '', 0),
(24, 1, '2018-03-19 15:12:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:12:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=24', 0, 'cidade', '', 0),
(25, 1, '2018-03-19 15:12:59', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:12:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=25', 0, 'cidade', '', 0),
(26, 1, '2018-03-19 15:14:34', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:14:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=26', 0, 'cidade', '', 0),
(27, 1, '2018-03-19 15:16:19', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:16:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=27', 0, 'cidade', '', 0),
(28, 1, '2018-03-19 15:20:47', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:20:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=28', 0, 'cidade', '', 0),
(29, 1, '2018-03-19 15:21:14', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:21:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=29', 0, 'cidade', '', 0),
(30, 1, '2018-03-19 15:23:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:23:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=30', 0, 'cidade', '', 0),
(31, 1, '2018-03-19 15:24:09', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:24:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=31', 0, 'cidade', '', 0),
(32, 1, '2018-03-19 15:24:49', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:24:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=32', 0, 'cidade', '', 0),
(33, 1, '2018-03-19 15:25:10', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:25:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=33', 0, 'cidade', '', 0),
(34, 1, '2018-03-19 15:25:26', '2018-03-19 18:25:26', '', 'Australia', '', 'publish', 'closed', 'closed', '', 'australia', '', '', '2018-03-22 13:16:27', '2018-03-22 16:16:27', '', 0, 'http://localhost/west1/?post_type=pais&#038;p=34', 0, 'pais', '', 0),
(35, 1, '2018-03-19 15:25:32', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:25:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=35', 0, 'cidade', '', 0),
(36, 1, '2018-03-19 15:25:54', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:25:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=36', 0, 'cidade', '', 0),
(37, 1, '2018-03-19 15:26:54', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:26:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=37', 0, 'cidade', '', 0),
(38, 1, '2018-03-19 15:28:20', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:28:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=38', 0, 'cidade', '', 0),
(39, 1, '2018-03-19 15:29:09', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:29:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=39', 0, 'cidade', '', 0),
(40, 1, '2018-03-19 15:29:48', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:29:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=40', 0, 'cidade', '', 0),
(41, 1, '2018-03-19 15:30:23', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:30:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=41', 0, 'cidade', '', 0),
(42, 1, '2018-03-19 15:34:05', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:34:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=42', 0, 'cidade', '', 0),
(43, 1, '2018-03-19 15:35:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:35:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=43', 0, 'cidade', '', 0),
(44, 1, '2018-03-19 15:35:57', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:35:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=44', 0, 'cidade', '', 0),
(45, 1, '2018-03-19 15:36:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:36:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=45', 0, 'cidade', '', 0),
(46, 1, '2018-03-19 15:36:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:36:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=46', 0, 'cidade', '', 0),
(47, 1, '2018-03-19 15:37:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:37:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=47', 0, 'cidade', '', 0),
(48, 1, '2018-03-19 15:37:34', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:37:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=48', 0, 'cidade', '', 0),
(49, 1, '2018-03-19 15:42:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:42:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=49', 0, 'cidade', '', 0),
(50, 1, '2018-03-19 15:45:15', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:45:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=50', 0, 'cidade', '', 0),
(51, 1, '2018-03-19 15:45:27', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:45:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=51', 0, 'cidade', '', 0),
(52, 1, '2018-03-19 15:47:53', '0000-00-00 00:00:00', '', 'Venezuela', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:47:53', '2018-03-19 18:47:53', '', 0, 'http://localhost/west1/?post_type=pais&#038;p=52', 0, 'pais', '', 0),
(53, 1, '2018-03-19 15:47:52', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:47:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=53', 0, 'cidade', '', 0),
(54, 1, '2018-03-19 15:47:59', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 15:47:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=pais&p=54', 0, 'pais', '', 0),
(55, 1, '2018-03-19 16:01:27', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:01:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=55', 0, 'cidade', '', 0),
(56, 1, '2018-03-19 16:02:54', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:02:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=56', 0, 'cidade', '', 0),
(57, 1, '2018-03-19 16:03:16', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:03:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=57', 0, 'cidade', '', 0),
(58, 1, '2018-03-19 16:03:40', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:03:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=58', 0, 'cidade', '', 0),
(59, 1, '2018-03-19 16:04:11', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:04:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=59', 0, 'cidade', '', 0),
(60, 1, '2018-03-19 16:05:05', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:05:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=60', 0, 'cidade', '', 0),
(61, 1, '2018-03-19 16:05:30', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:05:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=61', 0, 'cidade', '', 0),
(62, 1, '2018-03-19 16:06:17', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:06:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=62', 0, 'cidade', '', 0),
(63, 1, '2018-03-19 16:06:39', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:06:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=63', 0, 'cidade', '', 0),
(64, 1, '2018-03-19 16:06:54', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:06:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=64', 0, 'cidade', '', 0),
(65, 1, '2018-03-19 16:07:47', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:07:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=65', 0, 'cidade', '', 0),
(66, 1, '2018-03-19 16:08:12', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:08:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=66', 0, 'cidade', '', 0),
(67, 1, '2018-03-19 16:10:30', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:10:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=67', 0, 'cidade', '', 0),
(68, 1, '2018-03-19 16:12:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:12:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=68', 0, 'cidade', '', 0),
(69, 1, '2018-03-19 16:16:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:16:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=69', 0, 'cidade', '', 0),
(70, 1, '2018-03-19 16:17:01', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:17:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=70', 0, 'cidade', '', 0),
(71, 1, '2018-03-19 16:17:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:17:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=71', 0, 'cidade', '', 0),
(72, 1, '2018-03-19 16:18:01', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:18:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=72', 0, 'cidade', '', 0),
(73, 1, '2018-03-19 16:23:24', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:23:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=73', 0, 'cidade', '', 0),
(74, 1, '2018-03-19 16:24:13', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:24:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=74', 0, 'cidade', '', 0),
(75, 1, '2018-03-19 16:29:57', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:29:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=75', 0, 'cidade', '', 0),
(76, 1, '2018-03-19 16:30:43', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:30:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=76', 0, 'cidade', '', 0),
(77, 1, '2018-03-19 16:32:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:32:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=77', 0, 'cidade', '', 0),
(78, 1, '2018-03-19 16:34:37', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:34:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=78', 0, 'cidade', '', 0),
(79, 1, '2018-03-19 16:34:57', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:34:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=79', 0, 'cidade', '', 0),
(80, 1, '2018-03-19 16:39:20', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:39:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=80', 0, 'cidade', '', 0),
(81, 1, '2018-03-19 16:40:34', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:40:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=81', 0, 'cidade', '', 0),
(82, 1, '2018-03-19 16:46:18', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:46:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=82', 0, 'cidade', '', 0),
(83, 1, '2018-03-19 16:46:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:46:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=83', 0, 'cidade', '', 0),
(84, 1, '2018-03-19 16:48:11', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:48:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=84', 0, 'cidade', '', 0),
(85, 1, '2018-03-19 16:52:04', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:52:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=85', 0, 'cidade', '', 0),
(86, 1, '2018-03-19 16:52:27', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:52:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=86', 0, 'cidade', '', 0),
(87, 1, '2018-03-19 16:54:07', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:54:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=87', 0, 'cidade', '', 0),
(88, 1, '2018-03-19 16:55:14', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:55:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=88', 0, 'cidade', '', 0),
(89, 1, '2018-03-19 16:56:18', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:56:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=89', 0, 'cidade', '', 0),
(90, 1, '2018-03-19 16:56:59', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-19 16:56:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=90', 0, 'cidade', '', 0),
(91, 1, '2018-03-21 08:37:30', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-21 08:37:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=pais&p=91', 0, 'pais', '', 0),
(92, 1, '2018-03-22 13:02:55', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:02:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=92', 0, 'cidade', '', 0),
(93, 1, '2018-03-22 13:03:28', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:03:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=93', 0, 'cidade', '', 0),
(94, 1, '2018-03-22 13:03:35', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:03:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=94', 0, 'cidade', '', 0),
(95, 1, '2018-03-22 13:13:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:13:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=95', 0, 'cidade', '', 0),
(96, 1, '2018-03-22 13:17:07', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:17:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=96', 0, 'cidade', '', 0),
(97, 1, '2018-03-22 13:19:26', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:19:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=97', 0, 'cidade', '', 0),
(98, 1, '2018-03-22 13:22:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:22:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=98', 0, 'cidade', '', 0),
(99, 1, '2018-03-22 13:23:42', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:23:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=99', 0, 'cidade', '', 0),
(100, 1, '2018-03-22 13:26:06', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:26:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=100', 0, 'cidade', '', 0),
(101, 1, '2018-03-22 13:26:46', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:26:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=101', 0, 'cidade', '', 0),
(102, 1, '2018-03-22 13:27:07', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:27:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=102', 0, 'cidade', '', 0),
(103, 1, '2018-03-22 13:27:40', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:27:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=103', 0, 'cidade', '', 0),
(104, 1, '2018-03-22 13:28:05', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:28:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=104', 0, 'cidade', '', 0),
(105, 1, '2018-03-22 13:51:58', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:51:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=105', 0, 'cidade', '', 0),
(106, 1, '2018-03-22 13:52:40', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:52:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=106', 0, 'cidade', '', 0),
(107, 1, '2018-03-22 13:54:09', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:54:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=107', 0, 'cidade', '', 0),
(108, 1, '2018-03-22 13:54:26', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:54:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=108', 0, 'cidade', '', 0),
(109, 1, '2018-03-22 13:57:44', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 13:57:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=109', 0, 'cidade', '', 0),
(110, 1, '2018-03-22 14:03:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:03:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=110', 0, 'cidade', '', 0),
(111, 1, '2018-03-22 14:04:40', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:04:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=111', 0, 'cidade', '', 0),
(112, 1, '2018-03-22 14:05:42', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:05:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=112', 0, 'cidade', '', 0),
(113, 1, '2018-03-22 14:06:38', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:06:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=113', 0, 'cidade', '', 0),
(114, 1, '2018-03-22 14:07:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:07:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=114', 0, 'cidade', '', 0),
(115, 1, '2018-03-22 14:11:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:11:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=115', 0, 'cidade', '', 0),
(116, 1, '2018-03-22 14:12:20', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:12:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=116', 0, 'cidade', '', 0),
(117, 1, '2018-03-22 14:13:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:13:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=117', 0, 'cidade', '', 0),
(118, 1, '2018-03-22 14:13:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:13:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=118', 0, 'cidade', '', 0),
(119, 1, '2018-03-22 14:13:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:13:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=119', 0, 'cidade', '', 0),
(120, 1, '2018-03-22 14:23:24', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:23:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=120', 0, 'cidade', '', 0),
(121, 1, '2018-03-22 14:23:43', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:23:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=121', 0, 'cidade', '', 0),
(122, 1, '2018-03-22 14:28:39', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:28:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=122', 0, 'cidade', '', 0),
(123, 1, '2018-03-22 14:33:05', '0000-00-00 00:00:00', '', 'd', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:33:05', '2018-03-22 17:33:05', '', 0, 'http://localhost/west1/?post_type=cidade&#038;p=123', 0, 'cidade', '', 0),
(124, 1, '2018-03-22 14:33:31', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:33:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=124', 0, 'cidade', '', 0),
(125, 1, '2018-03-22 14:34:41', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:34:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=125', 0, 'cidade', '', 0),
(126, 1, '2018-03-22 14:42:29', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:42:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=126', 0, 'cidade', '', 0),
(127, 1, '2018-03-22 14:47:18', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:47:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=127', 0, 'cidade', '', 0),
(128, 1, '2018-03-22 14:47:53', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 14:47:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=128', 0, 'cidade', '', 0),
(129, 1, '2018-03-22 15:01:51', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 15:01:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=129', 0, 'cidade', '', 0),
(130, 1, '2018-03-22 15:12:47', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 15:12:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=130', 0, 'cidade', '', 0),
(131, 1, '2018-03-22 15:39:59', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-22 15:39:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/west1/?post_type=cidade&p=131', 0, 'cidade', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'superadmin@mail.com'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'session_tokens', 'a:2:{s:64:\"493f98055543d6f892193c5d0333a6f77dd5d33f7949c4d3e4dc4a604e5414e0\";a:4:{s:10:\"expiration\";i:1521805043;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1521632243;}s:64:\"3e99aa20d8e93eb0b11ee4aedfea3ce229045238c6ab49417ab6e92ac94cd552\";a:4:{s:10:\"expiration\";i:1521910313;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36\";s:5:\"login\";i:1521737513;}}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1521478861'),
(22, 1, 'agl_data', 'a:13:{s:8:\"latitude\";s:18:\"-7.118239999999999\";s:9:\"longitude\";s:10:\"-34.837035\";s:8:\"altitude\";s:3:\"NaN\";s:8:\"accuracy\";s:2:\"20\";s:16:\"altitudeAccuracy\";s:3:\"NaN\";s:7:\"heading\";s:3:\"NaN\";s:5:\"speed\";s:3:\"NaN\";s:10:\"error_code\";s:0:\"\";s:13:\"error_message\";s:0:\"\";s:8:\"php_time\";i:1521831798;s:8:\"php_date\";s:19:\"2018-03-23 19:03:18\";s:15:\"php_date_format\";s:11:\"Y-m-d H:i:s\";s:7:\"user_id\";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'superadmin@mail.com', '$P$BJ3NIMtIsLPUuTHgGXETHtCzvYoxhv/', 'superadminmail-com', 'pablo.cunha.dantas@gmail.com', '', '2018-03-15 18:09:36', '', 0, 'superadmin@mail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
