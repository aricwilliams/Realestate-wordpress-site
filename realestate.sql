-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2020 at 05:42 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-07-16 12:05:51', '2020-07-16 12:05:51', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
(1, 'siteurl', 'http://ezdigitalweb.com/1-wordpresssite', 'yes'),
(2, 'home', 'http://ezdigitalweb.com/1-wordpresssite', 'yes'),
(3, 'blogname', 'Real Estate Aric Williams beta', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aricwilliamst@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"agent_profiles/agent_profiles.php\";i:2;s:33:\"house_listings/house_listings.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'real-estate', 'yes'),
(41, 'stylesheet', 'real-estate', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '24', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1610453150', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1597637110;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1597665951;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1597665952;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1597665972;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1598011551;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', 'pV?me;uCm77L0^ suoe*y6Qz.B!t/TA<v1C_DY$SR{)qx1JWubwruVV{b+^}WKR*', 'no'),
(111, 'nonce_salt', '0qkr|c[R9)4i1kJcJ#GPf|]30ap#$S-G~BhKkaIpX~<PTx;LRn^Bb=KgHa*ht@g%', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.5-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.5\";s:7:\"version\";s:3:\"5.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.5-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.5\";s:7:\"version\";s:3:\"5.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1597635242;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(121, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594961531;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}}', 'yes'),
(126, 'auth_key', 'eiM4B<}]``6ZX*X?yz,Nw[.bpefcuusH&DM^}d}i:J,j$d94LBdh#`)[>D<+=pbX', 'no'),
(127, 'auth_salt', 'x<6+4b*b!AzmtXA7uRBTEfjos-RuR3B)pEcV+aGRf7mk@??R0E_sm_tQ Pkb3VH;', 'no'),
(128, 'logged_in_key', '~#wmu_ip[K5kXuvoI*pt[vIbU1>*YaI8uB]m*.6]=.Tuf~:v:E&JxUA2jn0Gz0Z7', 'no'),
(129, 'logged_in_salt', 'Ze:<2i:@Z~wX~8d[v|HKq;$yy>MJ`;J,dz&um-@fCSQog%Ma&V Y-Pv}uYEjw.=Y', 'no'),
(146, 'can_compress_scripts', '1', 'no'),
(148, 'current_theme', 'Real Estate Website aricwilliams', 'yes'),
(149, 'theme_mods_realestate-website', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594955976;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'recovery_mode_email_last_sent', '1595826094', 'yes'),
(177, 'theme_mods_estatesitearic', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594961516;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(186, 'theme_mods_real-estate', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:5:{s:9:\"main-menu\";i:2;s:11:\"footer-menu\";i:3;s:15:\"footer-menu-two\";i:4;s:12:\"Company-menu\";i:3;s:12:\"Explore-menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(191, '_transient_health-check-site-status-result', '{\"good\":8,\"recommended\":8,\"critical\":1}', 'yes'),
(198, 'acf_version', '5.8.12', 'yes'),
(423, '_site_transient_timeout_theme_roots', '1597637045', 'no'),
(424, '_site_transient_theme_roots', 'a:2:{s:11:\"real-estate\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(425, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1597635245;s:7:\"checked\";a:2:{s:11:\"real-estate\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(426, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1597635245;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.8.12\";s:33:\"agent_profiles/agent_profiles.php\";s:3:\"1.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"house_listings/house_listings.php\";s:3:\"1.0\";}s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.14\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(427, '_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce', '1598240046', 'no'),
(428, '_site_transient_php_check_12edeb5890095749089987982a1404ce', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_edit_lock', '1595122653:1'),
(4, 5, '_wp_attached_file', '2020/07/1_mYoOPE_YDPdcd5bECMHFaA.png'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:358;s:4:\"file\";s:36:\"2020/07/1_mYoOPE_YDPdcd5bECMHFaA.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"1_mYoOPE_YDPdcd5bECMHFaA-300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"1_mYoOPE_YDPdcd5bECMHFaA-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 2, '_edit_lock', '1594961237:1'),
(7, 6, '_wp_attached_file', '2020/07/2_About_UFC.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:23:\"2020/07/2_About_UFC.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"2_About_UFC-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"2_About_UFC-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"2_About_UFC-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"2_About_UFC-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 7, '_wp_attached_file', '2020/07/2_About_UFC-1.jpg'),
(10, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:25:\"2020/07/2_About_UFC-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"2_About_UFC-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 8, '_wp_attached_file', '2020/07/1_qZFQOGQ3NVq8kqti3Xu5xQ.jpeg'),
(12, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:888;s:6:\"height\";i:513;s:4:\"file\";s:37:\"2020/07/1_qZFQOGQ3NVq8kqti3Xu5xQ.jpeg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-300x173.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-768x444.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:37:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-350x350.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:37:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-350x513.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:37:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-400x375.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:37:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-700x400.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 9, '_wp_attached_file', '2020/07/3_About_Coaching.jpg'),
(14, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:955;s:4:\"file\";s:28:\"2020/07/3_About_Coaching.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"3_About_Coaching-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"3_About_Coaching-1024x509.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"3_About_Coaching-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"3_About_Coaching-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"3_About_Coaching-1536x764.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:764;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"3_About_Coaching-1200x597.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:597;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(15, 1, '_edit_lock', '1594961362:1'),
(16, 10, '_wp_attached_file', '2020/07/2_About_UFC-2.jpg'),
(17, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:25:\"2020/07/2_About_UFC-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"2_About_UFC-2-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-2-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-2-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-2-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-2-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:25:\"2_About_UFC-2-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 11, '_edit_lock', '1594959607:1'),
(46, 16, '_wp_attached_file', '2020/07/1_mYoOPE_YDPdcd5bECMHFaA-1.png'),
(47, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:358;s:4:\"file\";s:38:\"2020/07/1_mYoOPE_YDPdcd5bECMHFaA-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"1_mYoOPE_YDPdcd5bECMHFaA-1-300x168.png\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"1_mYoOPE_YDPdcd5bECMHFaA-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:38:\"1_mYoOPE_YDPdcd5bECMHFaA-1-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:38:\"1_mYoOPE_YDPdcd5bECMHFaA-1-350x358.png\";s:5:\"width\";i:350;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}s:3:\"box\";a:4:{s:4:\"file\";s:38:\"1_mYoOPE_YDPdcd5bECMHFaA-1-400x358.png\";s:5:\"width\";i:400;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 17, '_wp_attached_file', '2020/07/3_About_Coaching-1.jpg'),
(49, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:955;s:4:\"file\";s:30:\"2020/07/3_About_Coaching-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"3_About_Coaching-1-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"3_About_Coaching-1-1024x509.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"3_About_Coaching-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"3_About_Coaching-1-768x382.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"3_About_Coaching-1-1536x764.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:764;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:30:\"3_About_Coaching-1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:30:\"3_About_Coaching-1-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:30:\"3_About_Coaching-1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:30:\"3_About_Coaching-1-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:30:\"3_About_Coaching-1-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(50, 18, '_wp_attached_file', '2020/07/big-house.jpg'),
(51, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2020/07/big-house.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"big-house-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"big-house-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"big-house-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"big-house-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"big-house-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"big-house-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:21:\"big-house-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:21:\"big-house-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:21:\"big-house-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:21:\"big-house-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 19, '_wp_attached_file', '2020/07/1_qZFQOGQ3NVq8kqti3Xu5xQ-4.jpeg'),
(53, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:888;s:6:\"height\";i:513;s:4:\"file\";s:39:\"2020/07/1_qZFQOGQ3NVq8kqti3Xu5xQ-4.jpeg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-4-300x173.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-4-768x444.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:39:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-4-350x350.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:39:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-4-350x513.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:39:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-4-400x375.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:39:\"1_qZFQOGQ3NVq8kqti3Xu5xQ-4-700x400.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 21, '_edit_last', '1'),
(55, 21, '_edit_lock', '1595821576:1'),
(56, 11, '_wp_trash_meta_status', 'publish'),
(57, 11, '_wp_trash_meta_time', '1595135739'),
(58, 11, '_wp_desired_post_slug', 'about-us'),
(59, 3, '_wp_trash_meta_status', 'draft'),
(60, 3, '_wp_trash_meta_time', '1595135742'),
(61, 3, '_wp_desired_post_slug', 'privacy-policy'),
(62, 2, '_wp_trash_meta_status', 'publish'),
(63, 2, '_wp_trash_meta_time', '1595135744'),
(64, 2, '_wp_desired_post_slug', 'sample-page'),
(65, 24, '_edit_lock', '1595241301:1'),
(66, 27, '_wp_attached_file', '2020/07/logo.png'),
(67, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:16:\"2020/07/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 24, '_edit_last', '1'),
(69, 24, 'image', '27'),
(70, 24, '_image', 'field_5f13d738596be'),
(71, 28, 'image', '27'),
(72, 28, '_image', 'field_5f13d738596be'),
(73, 24, '_wp_page_template', 'page-template-home.php'),
(74, 29, 'image', ''),
(75, 29, '_image', 'field_5f13d738596be'),
(76, 30, 'image', '27'),
(77, 30, '_image', 'field_5f13d738596be'),
(78, 27, '_wp_attachment_image_alt', 'NC Realty Logo'),
(79, 31, 'image', '27'),
(80, 31, '_image', 'field_5f13d738596be'),
(81, 32, '_edit_lock', '1595808907:1'),
(82, 34, '_edit_lock', '1595164074:1'),
(83, 36, '_edit_lock', '1595164088:1'),
(84, 38, '_edit_lock', '1595164105:1'),
(85, 40, '_edit_lock', '1595164119:1'),
(86, 42, '_edit_lock', '1595164139:1'),
(87, 44, '_edit_lock', '1595827397:1'),
(88, 46, '_menu_item_type', 'post_type'),
(89, 46, '_menu_item_menu_item_parent', '0'),
(90, 46, '_menu_item_object_id', '44'),
(91, 46, '_menu_item_object', 'page'),
(92, 46, '_menu_item_target', ''),
(93, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 46, '_menu_item_xfn', ''),
(95, 46, '_menu_item_url', ''),
(142, 52, '_menu_item_type', 'post_type'),
(143, 52, '_menu_item_menu_item_parent', '0'),
(144, 52, '_menu_item_object_id', '32'),
(145, 52, '_menu_item_object', 'page'),
(146, 52, '_menu_item_target', ''),
(147, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 52, '_menu_item_xfn', ''),
(149, 52, '_menu_item_url', ''),
(151, 24, 'title_text', 'Find Your Home.'),
(152, 24, '_title_text', 'field_5f146720a3d86'),
(153, 54, 'image', '27'),
(154, 54, '_image', 'field_5f13d738596be'),
(155, 54, 'title_text', 'heheeh'),
(156, 54, '_title_text', 'field_5f144fdba7573'),
(157, 55, 'image', '27'),
(158, 55, '_image', 'field_5f13d738596be'),
(159, 55, 'title_text', 'heheeh'),
(160, 55, '_title_text', 'field_5f144fdba7573'),
(161, 58, 'image', '27'),
(162, 58, '_image', 'field_5f13d738596be'),
(163, 58, 'title_text', 'heheeh'),
(164, 58, '_title_text', 'field_5f144fdba7573'),
(165, 24, 'hero_title_text', 'Find Your Home.'),
(166, 24, '_hero_title_text', 'field_5f1451bb58fdd'),
(167, 24, 'hero', ''),
(168, 24, '_hero', 'field_5f14519558fdc'),
(169, 59, 'image', '27'),
(170, 59, '_image', 'field_5f13d738596be'),
(171, 59, 'title_text', 'heheeh'),
(172, 59, '_title_text', 'field_5f144fdba7573'),
(173, 59, 'hero_title_text', 'Find Your Home.'),
(174, 59, '_hero_title_text', 'field_5f1451bb58fdd'),
(175, 59, 'hero', ''),
(176, 59, '_hero', 'field_5f14519558fdc'),
(177, 60, 'image', '27'),
(178, 60, '_image', 'field_5f13d738596be'),
(179, 60, 'title_text', 'heheeh'),
(180, 60, '_title_text', 'field_5f144fdba7573'),
(181, 60, 'hero_title_text', 'Find Your Home.'),
(182, 60, '_hero_title_text', 'field_5f1451bb58fdd'),
(183, 60, 'hero', ''),
(184, 60, '_hero', 'field_5f14519558fdc'),
(185, 62, 'image', '27'),
(186, 62, '_image', 'field_5f13d738596be'),
(187, 62, 'title_text', 'ffjff'),
(188, 62, '_title_text', 'field_5f146720a3d86'),
(189, 62, 'hero_title_text', 'Find Your Home.'),
(190, 62, '_hero_title_text', 'field_5f1451bb58fdd'),
(191, 62, 'hero', ''),
(192, 62, '_hero', 'field_5f14519558fdc'),
(193, 63, 'image', '27'),
(194, 63, '_image', 'field_5f13d738596be'),
(195, 63, 'title_text', 'Find Your Dream Home.'),
(196, 63, '_title_text', 'field_5f146720a3d86'),
(197, 63, 'hero_title_text', 'Find Your Home.'),
(198, 63, '_hero_title_text', 'field_5f1451bb58fdd'),
(199, 63, 'hero', ''),
(200, 63, '_hero', 'field_5f14519558fdc'),
(201, 64, 'image', '27'),
(202, 64, '_image', 'field_5f13d738596be'),
(203, 64, 'title_text', 'Find Your Home.'),
(204, 64, '_title_text', 'field_5f146720a3d86'),
(205, 64, 'hero_title_text', 'Find Your Home.'),
(206, 64, '_hero_title_text', 'field_5f1451bb58fdd'),
(207, 64, 'hero', ''),
(208, 64, '_hero', 'field_5f14519558fdc'),
(209, 68, '_edit_last', '1'),
(210, 68, '_edit_lock', '1595413248:1'),
(211, 77, '_edit_last', '1'),
(212, 77, '_edit_lock', '1595345733:1'),
(213, 78, '_wp_attached_file', '2020/07/img01.jpg'),
(214, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:710;s:6:\"height\";i:444;s:4:\"file\";s:17:\"2020/07/img01.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img01-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"img01-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"img01-350x444.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:444;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:17:\"img01-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:17:\"img01-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 77, 'listing_company', 'Listed by NC Realestate '),
(216, 77, '_listing_company', 'field_5f14bccbc49b2'),
(217, 77, 'price', '$4,476,000'),
(218, 77, '_price', 'field_5f14bd0fc49b3'),
(219, 77, 'address', '175 Royal Palm Drive  Fort Lauderdale, FL 33301'),
(220, 77, '_address', 'field_5f14bd30c49b4'),
(221, 77, 'bed', '6'),
(222, 77, '_bed', 'field_5f14bd6f74ad0'),
(223, 77, 'baths', '8'),
(224, 77, '_baths', 'field_5f14bd8b74ad1'),
(225, 77, 'square_foot_', '77708'),
(226, 77, '_square_foot_', 'field_5f14bdb074ad2'),
(227, 77, 'image', '78'),
(228, 77, '_image', 'field_5f14be0503cb3'),
(229, 79, '_edit_last', '1'),
(230, 79, '_edit_lock', '1595338883:1'),
(231, 79, 'listing_company', 'Listed by NC Realestate '),
(232, 79, '_listing_company', 'field_5f14bccbc49b2'),
(233, 79, 'price', '$5,678,000'),
(234, 79, '_price', 'field_5f14bd0fc49b3'),
(235, 79, 'address', '175 Royal Palm Drive  Fort Lauderdale, FL 33301'),
(236, 79, '_address', 'field_5f14bd30c49b4'),
(237, 79, 'bed', '6'),
(238, 79, '_bed', 'field_5f14bd6f74ad0'),
(239, 79, 'baths', '8'),
(240, 79, '_baths', 'field_5f14bd8b74ad1'),
(241, 79, 'square_foot_', '5786'),
(242, 79, '_square_foot_', 'field_5f14bdb074ad2'),
(243, 79, 'image', '80'),
(244, 79, '_image', 'field_5f14be0503cb3'),
(245, 80, '_wp_attached_file', '2020/07/img02.jpg'),
(246, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2020;s:6:\"height\";i:1212;s:4:\"file\";s:17:\"2020/07/img02.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img02-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"img02-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img02-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"img02-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"img02-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"img02-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:17:\"img02-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:17:\"img02-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:17:\"img02-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(247, 81, '_edit_last', '1'),
(248, 81, '_edit_lock', '1595339010:1'),
(249, 82, '_wp_attached_file', '2020/07/img03.jpg'),
(250, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:910;s:6:\"height\";i:534;s:4:\"file\";s:17:\"2020/07/img03.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img03-300x176.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img03-768x451.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:451;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"img03-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"img03-350x534.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:534;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:17:\"img03-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:17:\"img03-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 81, 'listing_company', 'Listed by NC Realestate '),
(252, 81, '_listing_company', 'field_5f14bccbc49b2'),
(253, 81, 'price', '$4,586,000'),
(254, 81, '_price', 'field_5f14bd0fc49b3'),
(255, 81, 'address', '175 Royal Palm Drive  Fort Lauderdale, FL 33301'),
(256, 81, '_address', 'field_5f14bd30c49b4'),
(257, 81, 'bed', '6'),
(258, 81, '_bed', 'field_5f14bd6f74ad0'),
(259, 81, 'baths', '8'),
(260, 81, '_baths', 'field_5f14bd8b74ad1'),
(261, 81, 'square_foot_', '4567'),
(262, 81, '_square_foot_', 'field_5f14bdb074ad2'),
(263, 81, 'image', '82'),
(264, 81, '_image', 'field_5f14be0503cb3'),
(265, 83, '_edit_last', '1'),
(266, 83, '_edit_lock', '1595338989:1'),
(267, 84, '_wp_attached_file', '2020/07/img04.jpg'),
(268, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:174;s:4:\"file\";s:17:\"2020/07/img04.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(269, 83, 'listing_company', 'Listed by NC Realestate '),
(270, 83, '_listing_company', 'field_5f14bccbc49b2'),
(271, 83, 'price', '$5,768,000'),
(272, 83, '_price', 'field_5f14bd0fc49b3'),
(273, 83, 'address', '175 Royal Palm Drive  Fort Lauderdale, FL 33301'),
(274, 83, '_address', 'field_5f14bd30c49b4'),
(275, 83, 'bed', '6'),
(276, 83, '_bed', 'field_5f14bd6f74ad0'),
(277, 83, 'baths', '8'),
(278, 83, '_baths', 'field_5f14bd8b74ad1'),
(279, 83, 'square_foot_', '3596'),
(280, 83, '_square_foot_', 'field_5f14bdb074ad2'),
(281, 83, 'image', '84'),
(282, 83, '_image', 'field_5f14be0503cb3'),
(283, 85, '_edit_last', '1'),
(284, 85, '_edit_lock', '1595338967:1'),
(285, 86, '_wp_attached_file', '2020/07/img05.jpg'),
(286, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:194;s:4:\"file\";s:17:\"2020/07/img05.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(287, 85, 'listing_company', 'Listed by NC Realestate '),
(288, 85, '_listing_company', 'field_5f14bccbc49b2'),
(289, 85, 'price', '$85,000'),
(290, 85, '_price', 'field_5f14bd0fc49b3'),
(291, 85, 'address', '175 Royal Palm Drive  Fort Lauderdale, FL 33301'),
(292, 85, '_address', 'field_5f14bd30c49b4'),
(293, 85, 'bed', '4'),
(294, 85, '_bed', 'field_5f14bd6f74ad0'),
(295, 85, 'baths', '3'),
(296, 85, '_baths', 'field_5f14bd8b74ad1'),
(297, 85, 'square_foot_', '5000'),
(298, 85, '_square_foot_', 'field_5f14bdb074ad2'),
(299, 85, 'image', '86'),
(300, 85, '_image', 'field_5f14be0503cb3'),
(301, 87, '_edit_last', '1'),
(302, 87, '_edit_lock', '1595338810:1'),
(303, 88, '_wp_attached_file', '2020/07/img06.jpg'),
(304, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:17:\"2020/07/img06.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 87, 'listing_company', 'Listed by NC Realestate '),
(306, 87, '_listing_company', 'field_5f14bccbc49b2'),
(307, 87, 'price', '$90,000'),
(308, 87, '_price', 'field_5f14bd0fc49b3'),
(309, 87, 'address', '175 Royal Palm Drive  Fort Lauderdale, FL 33301'),
(310, 87, '_address', 'field_5f14bd30c49b4'),
(311, 87, 'bed', '3'),
(312, 87, '_bed', 'field_5f14bd6f74ad0'),
(313, 87, 'baths', '2'),
(314, 87, '_baths', 'field_5f14bd8b74ad1'),
(315, 87, 'square_foot_', '2000'),
(316, 87, '_square_foot_', 'field_5f14bdb074ad2'),
(317, 87, 'image', '88'),
(318, 87, '_image', 'field_5f14be0503cb3'),
(319, 89, '_edit_last', '1'),
(320, 89, '_edit_lock', '1595345796:1'),
(321, 89, 'listing_company', 'me'),
(322, 89, '_listing_company', 'field_5f14bccbc49b2'),
(323, 89, 'price', '$90,000'),
(324, 89, '_price', 'field_5f14bd0fc49b3'),
(325, 89, 'address', '618 south 7th street'),
(326, 89, '_address', 'field_5f14bd30c49b4'),
(327, 89, 'bed', '3'),
(328, 89, '_bed', 'field_5f14bd6f74ad0'),
(329, 89, 'baths', '4'),
(330, 89, '_baths', 'field_5f14bd8b74ad1'),
(331, 89, 'square_foot_', '3344'),
(332, 89, '_square_foot_', 'field_5f14bdb074ad2'),
(333, 89, 'image', '18'),
(334, 89, '_image', 'field_5f14be0503cb3'),
(335, 89, '_wp_trash_meta_status', 'publish'),
(336, 89, '_wp_trash_meta_time', '1595345944'),
(337, 89, '_wp_desired_post_slug', 'test'),
(338, 90, '_edit_last', '1'),
(339, 90, '_edit_lock', '1595462239:1'),
(340, 99, '_edit_last', '1'),
(341, 99, '_edit_lock', '1595415911:1'),
(342, 100, '_wp_attached_file', '2020/07/agent05.png'),
(343, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:19:\"2020/07/agent05.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"agent05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 99, 'image', '100'),
(345, 99, '_image', 'field_5f17117744330'),
(346, 99, 'title', 'Broker/Owner'),
(347, 99, '_title', 'field_5f17123bf2025'),
(348, 99, 'phone_number', '910-234-5678'),
(349, 99, '_phone_number', 'field_5f17125af2026'),
(350, 99, 'facebook', '1'),
(351, 99, '_facebook', 'field_5f171301f2027'),
(352, 99, 'instagram', '1'),
(353, 99, '_instagram', 'field_5f18132c13140'),
(354, 101, '_edit_last', '1'),
(355, 101, '_edit_lock', '1595414598:1'),
(356, 102, '_wp_attached_file', '2020/07/agent02.jpg'),
(357, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:19:\"2020/07/agent02.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"agent02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(358, 101, 'image', '102'),
(359, 101, '_image', 'field_5f17117744330'),
(360, 101, 'title', 'Broker'),
(361, 101, '_title', 'field_5f17123bf2025'),
(362, 101, 'phone_number', '910-534-5643'),
(363, 101, '_phone_number', 'field_5f17125af2026'),
(364, 101, 'facebook', '1'),
(365, 101, '_facebook', 'field_5f171301f2027'),
(366, 101, 'instagram', '1'),
(367, 101, '_instagram', 'field_5f18132c13140'),
(368, 103, '_edit_last', '1'),
(369, 103, '_edit_lock', '1595414576:1'),
(370, 104, '_wp_attached_file', '2020/07/agent03.jpg'),
(371, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:19:\"2020/07/agent03.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"agent03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 103, 'image', '104'),
(373, 103, '_image', 'field_5f17117744330'),
(374, 103, 'title', 'Broker'),
(375, 103, '_title', 'field_5f17123bf2025'),
(376, 103, 'phone_number', '910-222-3049'),
(377, 103, '_phone_number', 'field_5f17125af2026'),
(378, 103, 'facebook', '0'),
(379, 103, '_facebook', 'field_5f171301f2027'),
(380, 103, 'instagram', '1'),
(381, 103, '_instagram', 'field_5f18132c13140'),
(382, 105, '_edit_last', '1'),
(383, 105, '_edit_lock', '1595462730:1'),
(384, 106, '_wp_attached_file', '2020/07/agent04.jpg'),
(385, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:19:\"2020/07/agent04.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"agent04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 105, 'image', '106'),
(387, 105, '_image', 'field_5f17117744330'),
(388, 105, 'title', 'Broker'),
(389, 105, '_title', 'field_5f17123bf2025'),
(390, 105, 'phone_number', '910-787-2315'),
(391, 105, '_phone_number', 'field_5f17125af2026'),
(392, 105, 'facebook', '1'),
(393, 105, '_facebook', 'field_5f171301f2027'),
(394, 105, 'instagram', '0'),
(395, 105, '_instagram', 'field_5f18132c13140'),
(396, 105, 'name', 'Shawn Cool'),
(397, 105, '_name', 'field_5f1817c06348d'),
(398, 103, 'name', 'Mike Dugol'),
(399, 103, '_name', 'field_5f1817c06348d'),
(400, 101, 'name', 'Annabell Williams'),
(401, 101, '_name', 'field_5f1817c06348d'),
(402, 99, 'name', 'Lesa Mayo'),
(403, 99, '_name', 'field_5f1817c06348d'),
(404, 108, '_menu_item_type', 'post_type'),
(405, 108, '_menu_item_menu_item_parent', '0'),
(406, 108, '_menu_item_object_id', '44'),
(407, 108, '_menu_item_object', 'page'),
(408, 108, '_menu_item_target', ''),
(409, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(410, 108, '_menu_item_xfn', ''),
(411, 108, '_menu_item_url', ''),
(412, 108, '_menu_item_orphaned', '1595462855'),
(413, 109, '_edit_lock', '1595462749:1'),
(414, 111, '_edit_lock', '1595462765:1'),
(415, 113, '_edit_lock', '1595462780:1'),
(416, 115, '_edit_lock', '1595462804:1'),
(417, 117, '_edit_lock', '1595462821:1'),
(418, 119, '_edit_lock', '1595462905:1'),
(419, 121, '_edit_lock', '1595462943:1'),
(420, 123, '_edit_lock', '1595462961:1'),
(421, 125, '_edit_lock', '1595462986:1'),
(422, 127, '_edit_lock', '1595463005:1'),
(423, 129, '_menu_item_type', 'post_type'),
(424, 129, '_menu_item_menu_item_parent', '0'),
(425, 129, '_menu_item_object_id', '44'),
(426, 129, '_menu_item_object', 'page'),
(427, 129, '_menu_item_target', ''),
(428, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(429, 129, '_menu_item_xfn', ''),
(430, 129, '_menu_item_url', ''),
(432, 130, '_menu_item_type', 'post_type'),
(433, 130, '_menu_item_menu_item_parent', '0'),
(434, 130, '_menu_item_object_id', '109'),
(435, 130, '_menu_item_object', 'page'),
(436, 130, '_menu_item_target', ''),
(437, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(438, 130, '_menu_item_xfn', ''),
(439, 130, '_menu_item_url', ''),
(441, 131, '_menu_item_type', 'post_type'),
(442, 131, '_menu_item_menu_item_parent', '0'),
(443, 131, '_menu_item_object_id', '111'),
(444, 131, '_menu_item_object', 'page'),
(445, 131, '_menu_item_target', ''),
(446, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(447, 131, '_menu_item_xfn', ''),
(448, 131, '_menu_item_url', ''),
(450, 132, '_menu_item_type', 'post_type'),
(451, 132, '_menu_item_menu_item_parent', '0'),
(452, 132, '_menu_item_object_id', '113'),
(453, 132, '_menu_item_object', 'page'),
(454, 132, '_menu_item_target', ''),
(455, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(456, 132, '_menu_item_xfn', ''),
(457, 132, '_menu_item_url', ''),
(459, 133, '_menu_item_type', 'post_type'),
(460, 133, '_menu_item_menu_item_parent', '0'),
(461, 133, '_menu_item_object_id', '115'),
(462, 133, '_menu_item_object', 'page'),
(463, 133, '_menu_item_target', ''),
(464, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(465, 133, '_menu_item_xfn', ''),
(466, 133, '_menu_item_url', ''),
(468, 134, '_menu_item_type', 'post_type'),
(469, 134, '_menu_item_menu_item_parent', '0'),
(470, 134, '_menu_item_object_id', '117'),
(471, 134, '_menu_item_object', 'page'),
(472, 134, '_menu_item_target', ''),
(473, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(474, 134, '_menu_item_xfn', ''),
(475, 134, '_menu_item_url', ''),
(477, 135, '_menu_item_type', 'post_type'),
(478, 135, '_menu_item_menu_item_parent', '0'),
(479, 135, '_menu_item_object_id', '119'),
(480, 135, '_menu_item_object', 'page'),
(481, 135, '_menu_item_target', ''),
(482, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(483, 135, '_menu_item_xfn', ''),
(484, 135, '_menu_item_url', ''),
(486, 136, '_menu_item_type', 'post_type'),
(487, 136, '_menu_item_menu_item_parent', '0'),
(488, 136, '_menu_item_object_id', '121'),
(489, 136, '_menu_item_object', 'page'),
(490, 136, '_menu_item_target', ''),
(491, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(492, 136, '_menu_item_xfn', ''),
(493, 136, '_menu_item_url', ''),
(495, 137, '_menu_item_type', 'post_type'),
(496, 137, '_menu_item_menu_item_parent', '0'),
(497, 137, '_menu_item_object_id', '123'),
(498, 137, '_menu_item_object', 'page'),
(499, 137, '_menu_item_target', ''),
(500, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(501, 137, '_menu_item_xfn', ''),
(502, 137, '_menu_item_url', ''),
(504, 138, '_menu_item_type', 'post_type'),
(505, 138, '_menu_item_menu_item_parent', '0'),
(506, 138, '_menu_item_object_id', '125'),
(507, 138, '_menu_item_object', 'page'),
(508, 138, '_menu_item_target', ''),
(509, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(510, 138, '_menu_item_xfn', ''),
(511, 138, '_menu_item_url', ''),
(513, 139, '_menu_item_type', 'post_type'),
(514, 139, '_menu_item_menu_item_parent', '0'),
(515, 139, '_menu_item_object_id', '127'),
(516, 139, '_menu_item_object', 'page'),
(517, 139, '_menu_item_target', ''),
(518, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(519, 139, '_menu_item_xfn', ''),
(520, 139, '_menu_item_url', ''),
(522, 44, '_wp_page_template', 'page-template-aboutus.php'),
(523, 141, '_edit_last', '1'),
(524, 141, '_edit_lock', '1595809098:1'),
(525, 44, '_edit_last', '1'),
(526, 44, 'image', '27'),
(527, 44, '_image', 'field_5f13d738596be'),
(528, 143, 'image', '27'),
(529, 143, '_image', 'field_5f1a5d2f1b933'),
(530, 32, '_wp_page_template', 'page-template-property-search.php'),
(531, 32, '_edit_last', '1'),
(532, 32, 'image', '27'),
(533, 32, '_image', 'field_5f13d738596be'),
(534, 145, 'image', '27'),
(535, 145, '_image', 'field_5f1a5d2f1b933'),
(536, 146, '_edit_last', '1'),
(537, 146, '_edit_lock', '1595737467:1'),
(538, 147, '_wp_attached_file', '2020/07/img13.jpg'),
(539, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:17:\"2020/07/img13.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img13-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"img13-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img13-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"img13-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"img13-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"img13-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:17:\"img13-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:17:\"img13-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:17:\"img13-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(540, 146, 'listing_company', 'NC Realtors'),
(541, 146, '_listing_company', 'field_5f14bccbc49b2'),
(542, 146, 'price', '$10,476,000'),
(543, 146, '_price', 'field_5f14bd0fc49b3'),
(544, 146, 'address', '544 Lakeview Ct, Miami Beach, FL 33140'),
(545, 146, '_address', 'field_5f14bd30c49b4'),
(546, 146, 'bed', '12'),
(547, 146, '_bed', 'field_5f14bd6f74ad0'),
(548, 146, 'baths', '7'),
(549, 146, '_baths', 'field_5f14bd8b74ad1'),
(550, 146, 'square_foot_', '15000'),
(551, 146, '_square_foot_', 'field_5f14bdb074ad2'),
(552, 146, 'image', '147'),
(553, 146, '_image', 'field_5f14be0503cb3'),
(554, 148, '_edit_last', '1'),
(555, 148, '_edit_lock', '1595737542:1'),
(556, 149, '_wp_attached_file', '2020/07/img07.jpg'),
(557, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:596;s:6:\"height\";i:446;s:4:\"file\";s:17:\"2020/07/img07.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img07-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"img07-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"img07-350x446.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:17:\"img07-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:17:\"img07-596x400.jpg\";s:5:\"width\";i:596;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(558, 148, 'listing_company', 'NC Realtors'),
(559, 148, '_listing_company', 'field_5f14bccbc49b2'),
(560, 148, 'price', '$44,586,000'),
(561, 148, '_price', 'field_5f14bd0fc49b3'),
(562, 148, 'address', '32 Moonshi Ct, Miami Beach, FL 33140'),
(563, 148, '_address', 'field_5f14bd30c49b4'),
(564, 148, 'bed', '12'),
(565, 148, '_bed', 'field_5f14bd6f74ad0'),
(566, 148, 'baths', '6'),
(567, 148, '_baths', 'field_5f14bd8b74ad1'),
(568, 148, 'square_foot_', '15678'),
(569, 148, '_square_foot_', 'field_5f14bdb074ad2'),
(570, 148, 'image', '149'),
(571, 148, '_image', 'field_5f14be0503cb3'),
(572, 150, '_edit_last', '1'),
(573, 150, '_edit_lock', '1595737609:1'),
(574, 151, '_wp_attached_file', '2020/07/img08jpg.jpg'),
(575, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:950;s:4:\"file\";s:20:\"2020/07/img08jpg.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img08jpg-300x204.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"img08jpg-1024x695.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:695;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img08jpg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"img08jpg-768x521.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:521;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"img08jpg-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"img08jpg-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:20:\"img08jpg-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:20:\"img08jpg-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:20:\"img08jpg-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(576, 150, 'listing_company', 'NC Realtors'),
(577, 150, '_listing_company', 'field_5f14bccbc49b2'),
(578, 150, 'price', '$85,768,000'),
(579, 150, '_price', 'field_5f14bd0fc49b3'),
(580, 150, 'address', '4567 Water St, Miami Beach, FL 33140'),
(581, 150, '_address', 'field_5f14bd30c49b4'),
(582, 150, 'bed', '14'),
(583, 150, '_bed', 'field_5f14bd6f74ad0'),
(584, 150, 'baths', '6'),
(585, 150, '_baths', 'field_5f14bd8b74ad1'),
(586, 150, 'square_foot_', '17000'),
(587, 150, '_square_foot_', 'field_5f14bdb074ad2'),
(588, 150, 'image', '151'),
(589, 150, '_image', 'field_5f14be0503cb3'),
(590, 152, '_edit_last', '1'),
(591, 152, '_edit_lock', '1595737691:1'),
(592, 153, '_wp_attached_file', '2020/07/img09.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(593, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:951;s:6:\"height\";i:583;s:4:\"file\";s:17:\"2020/07/img09.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img09-300x184.png\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img09-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"img09-768x471.png\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"img09-350x350.png\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"img09-350x583.png\";s:5:\"width\";i:350;s:6:\"height\";i:583;s:9:\"mime-type\";s:9:\"image/png\";}s:3:\"box\";a:4:{s:4:\"file\";s:17:\"img09-400x375.png\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:17:\"img09-700x400.png\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(594, 152, 'listing_company', 'NC Realtors'),
(595, 152, '_listing_company', 'field_5f14bccbc49b2'),
(596, 152, 'price', '$100,476,000'),
(597, 152, '_price', 'field_5f14bd0fc49b3'),
(598, 152, 'address', '12 Desert, Miami Beach, FL 33140'),
(599, 152, '_address', 'field_5f14bd30c49b4'),
(600, 152, 'bed', '18'),
(601, 152, '_bed', 'field_5f14bd6f74ad0'),
(602, 152, 'baths', '9'),
(603, 152, '_baths', 'field_5f14bd8b74ad1'),
(604, 152, 'square_foot_', '23000'),
(605, 152, '_square_foot_', 'field_5f14bdb074ad2'),
(606, 152, 'image', '153'),
(607, 152, '_image', 'field_5f14be0503cb3'),
(608, 154, '_edit_last', '1'),
(609, 154, '_edit_lock', '1595737763:1'),
(610, 155, '_wp_attached_file', '2020/07/img10.jpg'),
(611, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:596;s:6:\"height\";i:446;s:4:\"file\";s:17:\"2020/07/img10.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img10-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"img10-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"img10-350x446.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:17:\"img10-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:17:\"img10-596x400.jpg\";s:5:\"width\";i:596;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(612, 154, 'listing_company', 'NC Realtors'),
(613, 154, '_listing_company', 'field_5f14bccbc49b2'),
(614, 154, 'price', '$10,678,000'),
(615, 154, '_price', 'field_5f14bd0fc49b3'),
(616, 154, 'address', '618 Woods Cir, Miami Beach, FL 33140'),
(617, 154, '_address', 'field_5f14bd30c49b4'),
(618, 154, 'bed', '20'),
(619, 154, '_bed', 'field_5f14bd6f74ad0'),
(620, 154, 'baths', '10'),
(621, 154, '_baths', 'field_5f14bd8b74ad1'),
(622, 154, 'square_foot_', '30000'),
(623, 154, '_square_foot_', 'field_5f14bdb074ad2'),
(624, 154, 'image', '155'),
(625, 154, '_image', 'field_5f14be0503cb3'),
(626, 156, '_edit_last', '1'),
(627, 156, '_edit_lock', '1595737834:1'),
(628, 157, '_wp_attached_file', '2020/07/img13-1.jpg'),
(629, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2020/07/img13-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"img13-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"img13-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"img13-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"img13-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"img13-1-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:19:\"img13-1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:19:\"img13-1-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:19:\"img13-1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:19:\"img13-1-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:19:\"img13-1-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(632, 156, 'listing_company', 'NC Realtors'),
(633, 156, '_listing_company', 'field_5f14bccbc49b2'),
(634, 156, 'price', '$94,476,000'),
(635, 156, '_price', 'field_5f14bd0fc49b3'),
(636, 156, 'address', '1345 Night St, Miami Beach, FL 33140'),
(637, 156, '_address', 'field_5f14bd30c49b4'),
(638, 156, 'bed', '20'),
(639, 156, '_bed', 'field_5f14bd6f74ad0'),
(640, 156, 'baths', '9'),
(641, 156, '_baths', 'field_5f14bd8b74ad1'),
(642, 156, 'square_foot_', '30400'),
(643, 156, '_square_foot_', 'field_5f14bdb074ad2'),
(644, 156, 'image', '157'),
(645, 156, '_image', 'field_5f14be0503cb3'),
(646, 32, 'title_text', 'Find Your Property.'),
(647, 32, '_title_text', 'field_5f146720a3d86'),
(648, 32, 'hero_image', '165'),
(649, 32, '_hero_image', 'field_5f1e128a82c00'),
(650, 160, 'image', '27'),
(651, 160, '_image', 'field_5f13d738596be'),
(652, 160, 'title_text', ''),
(653, 160, '_title_text', 'field_5f146720a3d86'),
(654, 160, 'hero_image', '18'),
(655, 160, '_hero_image', 'field_5f1e128a82c00'),
(656, 161, 'image', '27'),
(657, 161, '_image', 'field_5f13d738596be'),
(658, 161, 'title_text', ''),
(659, 161, '_title_text', 'field_5f146720a3d86'),
(660, 161, 'hero_image', '18'),
(661, 161, '_hero_image', 'field_5f1e128a82c00'),
(662, 162, 'image', '27'),
(663, 162, '_image', 'field_5f13d738596be'),
(664, 162, 'title_text', 'Find Your Voice. '),
(665, 162, '_title_text', 'field_5f146720a3d86'),
(666, 162, 'hero_image', '18'),
(667, 162, '_hero_image', 'field_5f1e128a82c00'),
(668, 163, '_wp_attached_file', '2020/07/3rd-house.jpg'),
(669, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:21:\"2020/07/3rd-house.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"3rd-house-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"3rd-house-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"3rd-house-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"3rd-house-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"3rd-house-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:21:\"3rd-house-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:21:\"3rd-house-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:21:\"3rd-house-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:21:\"3rd-house-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(670, 164, 'image', '27'),
(671, 164, '_image', 'field_5f13d738596be'),
(672, 164, 'title_text', 'Find Your Voice. '),
(673, 164, '_title_text', 'field_5f146720a3d86'),
(674, 164, 'hero_image', '163'),
(675, 164, '_hero_image', 'field_5f1e128a82c00'),
(676, 165, '_wp_attached_file', '2020/07/The-Best-Online-Property-Search-Tool-for-2019.jpg'),
(677, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1067;s:4:\"file\";s:57:\"2020/07/The-Best-Online-Property-Search-Tool-for-2019.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"The-Best-Online-Property-Search-Tool-for-2019-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:58:\"The-Best-Online-Property-Search-Tool-for-2019-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"The-Best-Online-Property-Search-Tool-for-2019-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"The-Best-Online-Property-Search-Tool-for-2019-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:59:\"The-Best-Online-Property-Search-Tool-for-2019-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:57:\"The-Best-Online-Property-Search-Tool-for-2019-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:57:\"The-Best-Online-Property-Search-Tool-for-2019-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:57:\"The-Best-Online-Property-Search-Tool-for-2019-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:57:\"The-Best-Online-Property-Search-Tool-for-2019-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:57:\"The-Best-Online-Property-Search-Tool-for-2019-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(678, 166, 'image', '27'),
(679, 166, '_image', 'field_5f13d738596be'),
(680, 166, 'title_text', 'Find Your Voice. '),
(681, 166, '_title_text', 'field_5f146720a3d86'),
(682, 166, 'hero_image', '165'),
(683, 166, '_hero_image', 'field_5f1e128a82c00'),
(684, 167, 'image', '27'),
(685, 167, '_image', 'field_5f13d738596be'),
(686, 167, 'title_text', 'Find Your Property.'),
(687, 167, '_title_text', 'field_5f146720a3d86'),
(688, 167, 'hero_image', '165'),
(689, 167, '_hero_image', 'field_5f1e128a82c00'),
(690, 141, '_wp_trash_meta_status', 'publish'),
(691, 141, '_wp_trash_meta_time', '1595809247'),
(692, 141, '_wp_desired_post_slug', 'group_5f1a5d28d7288'),
(693, 142, '_wp_trash_meta_status', 'publish'),
(694, 142, '_wp_trash_meta_time', '1595809247'),
(695, 142, '_wp_desired_post_slug', 'field_5f1a5d2f1b933'),
(696, 168, '_wp_attached_file', '2020/07/Image.jpg'),
(697, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:350;s:4:\"file\";s:17:\"2020/07/Image.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Image-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"Image-768x349.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:349;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:17:\"Image-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:17:\"Image-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:17:\"Image-400x350.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:17:\"Image-700x350.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(698, 44, 'title_text', 'Meet The Family. '),
(699, 44, '_title_text', 'field_5f146720a3d86'),
(700, 44, 'hero_image', '168'),
(701, 44, '_hero_image', 'field_5f1e128a82c00'),
(702, 169, 'image', '27'),
(703, 169, '_image', 'field_5f13d738596be'),
(704, 169, 'title_text', ''),
(705, 169, '_title_text', 'field_5f146720a3d86'),
(706, 169, 'hero_image', '168'),
(707, 169, '_hero_image', 'field_5f1e128a82c00'),
(708, 170, 'image', '27'),
(709, 170, '_image', 'field_5f13d738596be'),
(710, 170, 'title_text', 'Meet The Family. '),
(711, 170, '_title_text', 'field_5f146720a3d86'),
(712, 170, 'hero_image', '168'),
(713, 170, '_hero_image', 'field_5f1e128a82c00'),
(714, 44, 'title_text_sub', 'The #1 Realty Company in The Carolinas '),
(715, 44, '_title_text_sub', 'field_5f1e4e809739f'),
(716, 172, 'image', '27'),
(717, 172, '_image', 'field_5f13d738596be'),
(718, 172, 'title_text', 'Meet The Family. '),
(719, 172, '_title_text', 'field_5f146720a3d86'),
(720, 172, 'hero_image', '168'),
(721, 172, '_hero_image', 'field_5f1e128a82c00'),
(722, 172, 'title_text_sub', 'The #1 Realty Company in The Carolinas '),
(723, 172, '_title_text_sub', 'field_5f1e4e809739f'),
(724, 173, '_edit_last', '1'),
(725, 173, '_edit_lock', '1595825342:1'),
(726, 176, '_wp_attached_file', '2020/07/Kelli_Pallansch_N4696_Crop32.jpg'),
(727, 176, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1710;s:6:\"height\";i:1140;s:4:\"file\";s:40:\"2020/07/Kelli_Pallansch_N4696_Crop32.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"Kelli_Pallansch_N4696_Crop32-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"Kelli_Pallansch_N4696_Crop32-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Kelli_Pallansch_N4696_Crop32-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"Kelli_Pallansch_N4696_Crop32-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"Kelli_Pallansch_N4696_Crop32-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:40:\"Kelli_Pallansch_N4696_Crop32-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:40:\"Kelli_Pallansch_N4696_Crop32-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:40:\"Kelli_Pallansch_N4696_Crop32-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:40:\"Kelli_Pallansch_N4696_Crop32-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:40:\"Kelli_Pallansch_N4696_Crop32-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:14:\"Scott R. Kline\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:81:\"Kelli Pallansch in her Professional Headshot at SRK Headshot Day in san Francisco\";s:17:\"created_timestamp\";s:10:\"1408641654\";s:9:\"copyright\";s:17:\"© Scott R. Kline\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:44:\"Kelli Pallansch in her Professional Headshot\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:2:{i:0;s:26:\"Headshot Day San Francisco\";i:1;s:15:\"Kelli Pallansch\";}}}'),
(728, 44, 'image_agent', '176'),
(729, 44, '_image_agent', 'field_5f1e531ed90f7'),
(730, 44, 'agent_desc', 'My idea of good company is the company of clever, well-informed people who have a great deal of conversation; that is what I call good company.'),
(731, 44, '_agent_desc', 'field_5f1e5359d90f8'),
(732, 177, 'image', '27'),
(733, 177, '_image', 'field_5f13d738596be'),
(734, 177, 'title_text', 'Meet The Family. '),
(735, 177, '_title_text', 'field_5f146720a3d86'),
(736, 177, 'hero_image', '168'),
(737, 177, '_hero_image', 'field_5f1e128a82c00'),
(738, 177, 'title_text_sub', 'The #1 Realty Company in The Carolinas '),
(739, 177, '_title_text_sub', 'field_5f1e4e809739f'),
(740, 177, 'image_agent', '176'),
(741, 177, '_image_agent', 'field_5f1e531ed90f7'),
(742, 177, 'agent_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a sodales nulla, eu tincidunt tellus. Morbi in diam condimentum, auctor arcu eu, semper mauris. Integer vitae mattis turpis. Suspendisse potenti. Ut id venenatis tellus. Sed malesuada posuere erat a bibendum. Donec sit amet tincidunt risus, eget facilisis mi. Aliquam pulvinar tellus euismod, volutpat ex at, sollicitudin tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In neque tellus, gravida et tincidunt gravida, lacinia in arcu. Aenean sit amet orci tortor.'),
(743, 177, '_agent_desc', 'field_5f1e5359d90f8'),
(744, 178, 'image', '27'),
(745, 178, '_image', 'field_5f13d738596be'),
(746, 178, 'title_text', 'Meet The Family. '),
(747, 178, '_title_text', 'field_5f146720a3d86'),
(748, 178, 'hero_image', '168'),
(749, 178, '_hero_image', 'field_5f1e128a82c00'),
(750, 178, 'title_text_sub', 'The #1 Realty Company in The Carolinas '),
(751, 178, '_title_text_sub', 'field_5f1e4e809739f'),
(752, 178, 'image_agent', '176'),
(753, 178, '_image_agent', 'field_5f1e531ed90f7'),
(754, 178, 'agent_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  egestas. In neque tellus, gravida et tincidunt gravida, lacinia in arcu. Aenean sit amet orci tortor.'),
(755, 178, '_agent_desc', 'field_5f1e5359d90f8'),
(756, 179, 'image', '27'),
(757, 179, '_image', 'field_5f13d738596be'),
(758, 179, 'title_text', 'Meet The Family. '),
(759, 179, '_title_text', 'field_5f146720a3d86'),
(760, 179, 'hero_image', '168'),
(761, 179, '_hero_image', 'field_5f1e128a82c00'),
(762, 179, 'title_text_sub', 'The #1 Realty Company in The Carolinas '),
(763, 179, '_title_text_sub', 'field_5f1e4e809739f'),
(764, 179, 'image_agent', '176'),
(765, 179, '_image_agent', 'field_5f1e531ed90f7'),
(766, 179, 'agent_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a sodales nulla, eu tincidunt tellus. Morbi in diam condimentum, auctor arcu eu, semper mauris. Integer vitae mattis turpis. Suspendisse potenti. Ut id venenatis tellus. Sed malesuada posuere erat a bibendum. Donec sit amet tincidunt risus, eget facilisis mi. Aliquam '),
(767, 179, '_agent_desc', 'field_5f1e5359d90f8'),
(768, 181, 'image', '27'),
(769, 181, '_image', 'field_5f13d738596be'),
(770, 181, 'title_text', 'Meet The Family. '),
(771, 181, '_title_text', 'field_5f146720a3d86'),
(772, 181, 'hero_image', '168'),
(773, 181, '_hero_image', 'field_5f1e128a82c00'),
(774, 181, 'title_text_sub', 'The #1 Realty Company in The Carolinas '),
(775, 181, '_title_text_sub', 'field_5f1e4e809739f'),
(776, 181, 'image_agent', '176'),
(777, 181, '_image_agent', 'field_5f1e531ed90f7'),
(778, 181, 'agent_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a sodales nulla, eu tincidunt tellus. Morbi in diam condimentum, auctor arcu eu, semper mauris. Integer vitae mattis turpis. Suspendisse potenti. Ut id venenatis tellus. Sed malesuada posuere erat a bibendum. Donec sit amet tincidunt risus, eget facilisis mi. Aliquam '),
(779, 181, '_agent_desc', 'field_5f1e5359d90f8'),
(780, 44, 'lead_title', 'Hi! I\'m Nancy.'),
(781, 44, '_lead_title', 'field_5f1e5c9ae48c9'),
(782, 183, 'image', '27'),
(783, 183, '_image', 'field_5f13d738596be'),
(784, 183, 'title_text', 'Meet The Family. '),
(785, 183, '_title_text', 'field_5f146720a3d86'),
(786, 183, 'hero_image', '168'),
(787, 183, '_hero_image', 'field_5f1e128a82c00'),
(788, 183, 'title_text_sub', 'The #1 Realty Company in The Carolinas '),
(789, 183, '_title_text_sub', 'field_5f1e4e809739f'),
(790, 183, 'image_agent', '176'),
(791, 183, '_image_agent', 'field_5f1e531ed90f7'),
(792, 183, 'agent_desc', 'My idea of good company is the company of clever, well-informed people who have a great deal of conversation; that is what I call good company.'),
(793, 183, '_agent_desc', 'field_5f1e5359d90f8'),
(794, 183, 'lead_title', 'Hi! I\'m Nancy.'),
(795, 183, '_lead_title', 'field_5f1e5c9ae48c9'),
(796, 185, '_wp_attached_file', '2020/07/Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256.jpg'),
(797, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:118:\"2020/07/Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:118:\"Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:120:\"Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:118:\"Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:118:\"Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:118:\"Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:118:\"Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:118:\"Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:118:\"Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:118:\"Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:15:\"Benjamin Marcum\";s:6:\"camera\";s:10:\"NIKON D850\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1515498148\";s:9:\"copyright\";s:15:\"Benjamin Marcum\";s:12:\"focal_length\";s:2:\"78\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(798, 184, '_edit_last', '1'),
(799, 184, '_edit_lock', '1595827459:1'),
(800, 184, 'image', '185'),
(801, 184, '_image', 'field_5f17117744330'),
(802, 184, 'title', 'Broker'),
(803, 184, '_title', 'field_5f17123bf2025'),
(804, 184, 'name', 'Mike Roder'),
(805, 184, '_name', 'field_5f1817c06348d'),
(806, 184, 'phone_number', '910-534-5643'),
(807, 184, '_phone_number', 'field_5f17125af2026'),
(808, 184, 'facebook', '1'),
(809, 184, '_facebook', 'field_5f171301f2027'),
(810, 184, 'instagram', '0'),
(811, 184, '_instagram', 'field_5f18132c13140'),
(812, 187, '_wp_attached_file', '2020/07/Business-Headshots-by-Philadelphia-PA-photographer-281.jpg'),
(813, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:66:\"2020/07/Business-Headshots-by-Philadelphia-PA-photographer-281.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:66:\"Business-Headshots-by-Philadelphia-PA-photographer-281-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:68:\"Business-Headshots-by-Philadelphia-PA-photographer-281-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"Business-Headshots-by-Philadelphia-PA-photographer-281-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:66:\"Business-Headshots-by-Philadelphia-PA-photographer-281-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:66:\"Business-Headshots-by-Philadelphia-PA-photographer-281-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:66:\"Business-Headshots-by-Philadelphia-PA-photographer-281-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:66:\"Business-Headshots-by-Philadelphia-PA-photographer-281-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:66:\"Business-Headshots-by-Philadelphia-PA-photographer-281-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:66:\"Business-Headshots-by-Philadelphia-PA-photographer-281-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:15:\"Richard Quindry\";s:6:\"camera\";s:8:\"NIKON D4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1461628800\";s:9:\"copyright\";s:20:\"2018 Richard Quindry\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(814, 186, '_edit_last', '1'),
(815, 186, 'image', '187'),
(816, 186, '_image', 'field_5f17117744330'),
(817, 186, 'title', 'Broker'),
(818, 186, '_title', 'field_5f17123bf2025'),
(819, 186, 'name', 'Kimberly Jones'),
(820, 186, '_name', 'field_5f1817c06348d'),
(821, 186, 'phone_number', '910-787-2315'),
(822, 186, '_phone_number', 'field_5f17125af2026'),
(823, 186, 'facebook', '1'),
(824, 186, '_facebook', 'field_5f171301f2027'),
(825, 186, 'instagram', '1'),
(826, 186, '_instagram', 'field_5f18132c13140'),
(827, 186, '_edit_lock', '1595827501:1'),
(828, 189, '_wp_attached_file', '2020/07/unnamed.jpg'),
(829, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:341;s:4:\"file\";s:19:\"2020/07/unnamed.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"unnamed-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:19:\"unnamed-350x341.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:19:\"unnamed-350x341.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:19:\"unnamed-400x341.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(830, 188, '_edit_last', '1'),
(831, 188, 'image', '193'),
(832, 188, '_image', 'field_5f17117744330'),
(833, 188, 'title', 'Broker'),
(834, 188, '_title', 'field_5f17123bf2025'),
(835, 188, 'name', 'Sarah Beckem'),
(836, 188, '_name', 'field_5f1817c06348d'),
(837, 188, 'phone_number', '910-534-5643'),
(838, 188, '_phone_number', 'field_5f17125af2026'),
(839, 188, 'facebook', '1'),
(840, 188, '_facebook', 'field_5f171301f2027'),
(841, 188, 'instagram', '0'),
(842, 188, '_instagram', 'field_5f18132c13140'),
(843, 188, '_edit_lock', '1595828674:1'),
(844, 191, '_wp_attached_file', '2020/07/Kelli_Pallansch_N4696_Crop32-1.jpg'),
(845, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1710;s:6:\"height\";i:1140;s:4:\"file\";s:42:\"2020/07/Kelli_Pallansch_N4696_Crop32-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Kelli_Pallansch_N4696_Crop32-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"Kelli_Pallansch_N4696_Crop32-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"Kelli_Pallansch_N4696_Crop32-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"Kelli_Pallansch_N4696_Crop32-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:44:\"Kelli_Pallansch_N4696_Crop32-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:42:\"Kelli_Pallansch_N4696_Crop32-1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:42:\"Kelli_Pallansch_N4696_Crop32-1-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:3:\"box\";a:4:{s:4:\"file\";s:42:\"Kelli_Pallansch_N4696_Crop32-1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"mediumSize\";a:4:{s:4:\"file\";s:42:\"Kelli_Pallansch_N4696_Crop32-1-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:42:\"Kelli_Pallansch_N4696_Crop32-1-966x644.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:644;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:14:\"Scott R. Kline\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:81:\"Kelli Pallansch in her Professional Headshot at SRK Headshot Day in san Francisco\";s:17:\"created_timestamp\";s:10:\"1408641654\";s:9:\"copyright\";s:17:\"© Scott R. Kline\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:44:\"Kelli Pallansch in her Professional Headshot\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:2:{i:0;s:26:\"Headshot Day San Francisco\";i:1;s:15:\"Kelli Pallansch\";}}}'),
(846, 190, '_edit_last', '1'),
(847, 190, '_edit_lock', '1595827770:1'),
(848, 190, 'image', '192'),
(849, 190, '_image', 'field_5f17117744330'),
(850, 190, 'title', 'Broker'),
(851, 190, '_title', 'field_5f17123bf2025'),
(852, 190, 'name', 'Nnacy Grace'),
(853, 190, '_name', 'field_5f1817c06348d'),
(854, 190, 'phone_number', '910-222-3049'),
(855, 190, '_phone_number', 'field_5f17125af2026'),
(856, 190, 'facebook', '1'),
(857, 190, '_facebook', 'field_5f171301f2027'),
(858, 190, 'instagram', '1'),
(859, 190, '_instagram', 'field_5f18132c13140'),
(860, 192, '_wp_attached_file', '2020/07/b732af8607e4fe5f9ab2c1ee73f75c62.jpg'),
(861, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:44:\"2020/07/b732af8607e4fe5f9ab2c1ee73f75c62.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"b732af8607e4fe5f9ab2c1ee73f75c62-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(862, 193, '_wp_attached_file', '2020/07/Shabana-2.jpeg'),
(863, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:22:\"2020/07/Shabana-2.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Shabana-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-07-16 12:05:51', '2020-07-16 12:05:51', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-07-16 12:05:51', '2020-07-16 12:05:51', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=1', 0, 'post', '', 1),
(2, 1, '2020-07-16 12:05:51', '2020-07-16 12:05:51', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://ezdigitalweb.com/1-wordpresssite/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-07-19 05:15:44', '2020-07-19 05:15:44', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-07-16 12:05:51', '2020-07-16 12:05:51', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://ezdigitalweb.com/1-wordpresssite.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-07-19 05:15:42', '2020-07-19 05:15:42', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-07-16 12:09:46', '2020-07-16 12:09:46', '', '1_mYoOPE_YDPdcd5bECMHFaA', '', 'inherit', 'open', 'closed', '', '1_myoope_ydpdcd5becmhfaa', '', '', '2020-07-16 12:09:46', '2020-07-16 12:09:46', '', 3, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/1_mYoOPE_YDPdcd5bECMHFaA.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-07-16 12:13:47', '2020-07-16 12:13:47', '', '2_About_UFC', '', 'inherit', 'open', 'closed', '', '2_about_ufc', '', '', '2020-07-16 12:13:47', '2020-07-16 12:13:47', '', 2, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/2_About_UFC.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2020-07-16 12:16:52', '2020-07-16 12:16:52', '', '2_About_UFC', '', 'inherit', 'open', 'closed', '', '2_about_ufc-2', '', '', '2020-07-16 12:16:52', '2020-07-16 12:16:52', '', 2, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/2_About_UFC-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2020-07-16 12:26:15', '2020-07-16 12:26:15', '', '1_qZFQOGQ3NVq8kqti3Xu5xQ', '', 'inherit', 'open', 'closed', '', '1_qzfqogq3nvq8kqti3xu5xq', '', '', '2020-07-16 12:26:15', '2020-07-16 12:26:15', '', 2, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/1_qZFQOGQ3NVq8kqti3Xu5xQ.jpeg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2020-07-17 03:20:01', '2020-07-17 03:20:01', '', '3_About_Coaching', '', 'inherit', 'open', 'closed', '', '3_about_coaching', '', '', '2020-07-17 03:20:01', '2020-07-17 03:20:01', '', 2, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/3_About_Coaching.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2020-07-17 03:31:54', '2020-07-17 03:31:54', '', '2_About_UFC', '', 'inherit', 'open', 'closed', '', '2_about_ufc-3', '', '', '2020-07-17 03:31:54', '2020-07-17 03:31:54', '', 1, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/2_About_UFC-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2020-07-17 03:37:37', '2020-07-17 03:37:37', '', 'About Us', '', 'trash', 'closed', 'closed', '', 'about-us__trashed', '', '', '2020-07-19 05:15:39', '2020-07-19 05:15:39', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-07-17 03:37:37', '2020-07-17 03:37:37', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-07-17 03:37:37', '2020-07-17 03:37:37', '', 11, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/17/11-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-07-17 03:55:33', '2020-07-17 03:55:33', '', '1_mYoOPE_YDPdcd5bECMHFaA', '', 'inherit', 'open', 'closed', '', '1_myoope_ydpdcd5becmhfaa-2', '', '', '2020-07-17 03:55:33', '2020-07-17 03:55:33', '', 11, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/1_mYoOPE_YDPdcd5bECMHFaA-1.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2020-07-17 04:10:35', '2020-07-17 04:10:35', '', '3_About_Coaching', '', 'inherit', 'open', 'closed', '', '3_about_coaching-2', '', '', '2020-07-17 04:10:35', '2020-07-17 04:10:35', '', 11, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/3_About_Coaching-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2020-07-17 04:13:07', '2020-07-17 04:13:07', '', '', '', 'inherit', 'open', 'closed', '', 'big-house', '', '', '2020-07-21 15:38:32', '2020-07-21 15:38:32', '', 11, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/big-house.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-07-17 04:52:37', '2020-07-17 04:52:37', '', '1_qZFQOGQ3NVq8kqti3Xu5xQ', '', 'inherit', 'open', 'closed', '', '1_qzfqogq3nvq8kqti3xu5xq-2', '', '', '2020-07-17 04:52:37', '2020-07-17 04:52:37', '', 3, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/1_qZFQOGQ3NVq8kqti3Xu5xQ-4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-07-19 05:15:28', '2020-07-19 05:15:28', 'a:7:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"24\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"32\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"44\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'hero', 'hero', 'publish', 'closed', 'closed', '', 'group_5f13d73277449', '', '', '2020-07-27 03:48:38', '2020-07-27 03:48:38', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2020-07-19 05:15:42', '2020-07-19 05:15:42', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://ezdigitalweb.com/1-wordpresssite.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-07-19 05:15:42', '2020-07-19 05:15:42', '', 3, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/3-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-07-19 05:15:44', '2020-07-19 05:15:44', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://ezdigitalweb.com/1-wordpresssite/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-19 05:15:44', '2020-07-19 05:15:44', '', 2, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/2-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-07-19 05:15:58', '2020-07-19 05:15:58', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-07-19 15:38:42', '2020-07-19 15:38:42', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=24', 0, 'page', '', 0),
(25, 1, '2020-07-19 05:15:58', '2020-07-19 05:15:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 05:15:58', '2020-07-19 05:15:58', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-07-19 05:17:29', '2020-07-19 05:17:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"square\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5f13d738596be', '', '', '2020-07-19 12:21:25', '2020-07-19 12:21:25', '', 21, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=26', 0, 'acf-field', '', 0),
(27, 1, '2020-07-19 05:26:38', '2020-07-19 05:26:38', '', '', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-07-24 04:02:41', '2020-07-24 04:02:41', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/logo.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2020-07-19 05:26:47', '2020-07-19 05:26:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 05:26:47', '2020-07-19 05:26:47', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-07-19 12:50:39', '2020-07-19 12:50:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 12:50:39', '2020-07-19 12:50:39', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-07-19 12:51:37', '2020-07-19 12:51:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 12:51:37', '2020-07-19 12:51:37', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-07-19 12:58:44', '2020-07-19 12:58:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 12:58:44', '2020-07-19 12:58:44', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-07-19 13:09:56', '2020-07-19 13:09:56', '', 'Property Search', '', 'publish', 'closed', 'closed', '', 'property-search', '', '', '2020-07-27 00:16:38', '2020-07-27 00:16:38', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=32', 0, 'page', '', 0),
(33, 1, '2020-07-19 13:09:56', '2020-07-19 13:09:56', '', 'Property Search', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-07-19 13:09:56', '2020-07-19 13:09:56', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-07-19 13:10:17', '2020-07-19 13:10:17', '', 'AGENTS', '', 'publish', 'closed', 'closed', '', 'agents', '', '', '2020-07-19 13:10:17', '2020-07-19 13:10:17', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=34', 0, 'page', '', 0),
(35, 1, '2020-07-19 13:10:17', '2020-07-19 13:10:17', '', 'AGENTS', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-07-19 13:10:17', '2020-07-19 13:10:17', '', 34, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-07-19 13:10:31', '2020-07-19 13:10:31', '', 'BUYERS', '', 'publish', 'closed', 'closed', '', 'buyers', '', '', '2020-07-19 13:10:31', '2020-07-19 13:10:31', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=36', 0, 'page', '', 0),
(37, 1, '2020-07-19 13:10:31', '2020-07-19 13:10:31', '', 'BUYERS', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-07-19 13:10:31', '2020-07-19 13:10:31', '', 36, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-07-19 13:10:46', '2020-07-19 13:10:46', '', 'SELLERS', '', 'publish', 'closed', 'closed', '', 'sellers', '', '', '2020-07-19 13:10:46', '2020-07-19 13:10:46', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=38', 0, 'page', '', 0),
(39, 1, '2020-07-19 13:10:46', '2020-07-19 13:10:46', '', 'SELLERS', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-07-19 13:10:46', '2020-07-19 13:10:46', '', 38, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-07-19 13:11:00', '2020-07-19 13:11:00', '', 'RENTALS', '', 'publish', 'closed', 'closed', '', 'rentals', '', '', '2020-07-19 13:11:00', '2020-07-19 13:11:00', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=40', 0, 'page', '', 0),
(41, 1, '2020-07-19 13:11:00', '2020-07-19 13:11:00', '', 'RENTALS', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-19 13:11:00', '2020-07-19 13:11:00', '', 40, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-07-19 13:11:21', '2020-07-19 13:11:21', '', 'NEIGHBORHOODS', '', 'publish', 'closed', 'closed', '', 'neighborhoods', '', '', '2020-07-19 13:11:21', '2020-07-19 13:11:21', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=42', 0, 'page', '', 0),
(43, 1, '2020-07-19 13:11:21', '2020-07-19 13:11:21', '', 'NEIGHBORHOODS', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-07-19 13:11:21', '2020-07-19 13:11:21', '', 42, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-07-19 13:11:33', '2020-07-19 13:11:33', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-07-27 04:54:54', '2020-07-27 04:54:54', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=44', 0, 'page', '', 0),
(45, 1, '2020-07-19 13:11:33', '2020-07-19 13:11:33', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-19 13:11:33', '2020-07-19 13:11:33', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-07-19 13:12:30', '2020-07-19 13:12:30', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-07-27 23:47:18', '2020-07-27 23:47:18', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=46', 2, 'nav_menu_item', '', 0),
(52, 1, '2020-07-19 13:12:30', '2020-07-19 13:12:30', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-07-27 23:47:18', '2020-07-27 23:47:18', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=52', 1, 'nav_menu_item', '', 0),
(54, 1, '2020-07-19 13:53:35', '2020-07-19 13:53:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 13:53:35', '2020-07-19 13:53:35', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-07-19 13:56:13', '2020-07-19 13:56:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 13:56:13', '2020-07-19 13:56:13', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-07-19 14:02:07', '2020-07-19 14:02:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 14:02:07', '2020-07-19 14:02:07', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-07-19 15:24:31', '2020-07-19 15:24:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 15:24:31', '2020-07-19 15:24:31', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-07-19 15:24:47', '2020-07-19 15:24:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 15:24:47', '2020-07-19 15:24:47', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-07-19 15:31:05', '2020-07-19 15:31:05', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title text', 'title_text', 'publish', 'closed', 'closed', '', 'field_5f146720a3d86', '', '', '2020-07-19 15:31:05', '2020-07-19 15:31:05', '', 21, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=61', 1, 'acf-field', '', 0),
(62, 1, '2020-07-19 15:37:54', '2020-07-19 15:37:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 15:37:54', '2020-07-19 15:37:54', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-07-19 15:38:19', '2020-07-19 15:38:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 15:38:19', '2020-07-19 15:38:19', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-07-19 15:38:42', '2020-07-19 15:38:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-19 15:38:42', '2020-07-19 15:38:42', '', 24, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/19/24-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-07-19 21:38:00', '2020-07-19 21:38:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"house_listings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Listing', 'listing', 'publish', 'closed', 'closed', '', 'group_5f14bcb7099db', '', '', '2020-07-21 13:41:46', '2020-07-21 13:41:46', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field-group&#038;p=68', 0, 'acf-field-group', '', 0),
(69, 1, '2020-07-19 21:38:00', '2020-07-19 21:38:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:53:\"What listing company will be posting this property...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'listing company', 'listing_company', 'publish', 'closed', 'closed', '', 'field_5f14bccbc49b2', '', '', '2020-07-19 21:38:00', '2020-07-19 21:38:00', '', 68, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=69', 0, 'acf-field', '', 0),
(70, 1, '2020-07-19 21:38:00', '2020-07-19 21:38:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:34:\"How much does the property cost...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'price', 'price', 'publish', 'closed', 'closed', '', 'field_5f14bd0fc49b3', '', '', '2020-07-21 13:41:46', '2020-07-21 13:41:46', '', 68, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=70', 1, 'acf-field', '', 0),
(71, 1, '2020-07-19 21:38:00', '2020-07-19 21:38:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:38:\"What is the address of the property...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'address', 'address', 'publish', 'closed', 'closed', '', 'field_5f14bd30c49b4', '', '', '2020-07-19 21:40:47', '2020-07-19 21:40:47', '', 68, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=71', 2, 'acf-field', '', 0),
(72, 1, '2020-07-19 21:40:47', '2020-07-19 21:40:47', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:18:\"How many bedrooms?\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'bed', 'bed', 'publish', 'closed', 'closed', '', 'field_5f14bd6f74ad0', '', '', '2020-07-19 21:40:47', '2020-07-19 21:40:47', '', 68, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=72', 3, 'acf-field', '', 0),
(73, 1, '2020-07-19 21:40:47', '2020-07-19 21:40:47', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:19:\"how many bathrooms?\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'baths', 'baths', 'publish', 'closed', 'closed', '', 'field_5f14bd8b74ad1', '', '', '2020-07-19 21:40:47', '2020-07-19 21:40:47', '', 68, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=73', 4, 'acf-field', '', 0),
(74, 1, '2020-07-19 21:40:48', '2020-07-19 21:40:48', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:17:\"How much Sq Ft. ?\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'square foot', 'square_foot_', 'publish', 'closed', 'closed', '', 'field_5f14bdb074ad2', '', '', '2020-07-19 21:40:48', '2020-07-19 21:40:48', '', 68, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=74', 5, 'acf-field', '', 0),
(76, 1, '2020-07-19 21:41:58', '2020-07-19 21:41:58', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:39:\"please load an image of the property...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5f14be0503cb3', '', '', '2020-07-19 21:41:58', '2020-07-19 21:41:58', '', 68, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=76', 6, 'acf-field', '', 0),
(77, 1, '2020-07-19 21:47:01', '2020-07-19 21:47:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida felis et turpis dignissim, at sodales sapien tristique. Curabitur tempus erat leo, aliquet dictum diam convallis id. Phasellus quis pellentesque erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris rhoncus, tellus at eleifend finibus, ante elit molestie tortor, vel condimentum turpis velit facilisis enim. Nam sit amet nisi accumsan, laoreet leo ac, faucibus mauris. Cras tincidunt urna magna, accumsan euismod lorem aliquet ut. Praesent sagittis elit sapien, in molestie dolor ullamcorper sed. Aenean id lectus dui. Pellentesque blandit pellentesque pretium. Nulla auctor ante id congue accumsan. Nam faucibus, dolor sit amet viverra tincidunt, sem libero euismod felis, sit amet sollicitudin neque ante in purus. Nunc fringilla odio turpis, et pharetra ipsum venenatis at.\r\n\r\nUt sit amet nibh ut erat vehicula tincidunt et vel tortor. Integer ac elit facilisis, efficitur lorem id, auctor metus. Mauris justo purus, condimentum vel orci ac, semper blandit tortor. Cras in porttitor orci. Integer ege', 'Spanish Beauty', '', 'publish', 'closed', 'closed', '', 'spanish-beauty', '', '', '2020-07-21 13:44:02', '2020-07-21 13:44:02', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=77', 0, 'house_listings', '', 0),
(78, 1, '2020-07-19 21:46:46', '2020-07-19 21:46:46', '', '', '', 'inherit', 'open', 'closed', '', 'img01', '', '', '2020-07-19 21:46:53', '2020-07-19 21:46:53', '', 77, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img01.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-07-19 21:49:49', '2020-07-19 21:49:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida felis et turpis dignissim, at sodales sapien tristique. Curabitur tempus erat leo, aliquet dictum diam convallis id. Phasellus quis pellentesque erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris rhoncus, tellus at eleifend finibus, ante elit molestie tortor, vel condimentum turpis velit facilisis enim. Nam sit amet nisi accumsan, laoreet leo ac, faucibus mauris. Cras tincidunt urna magna, accumsan euismod lorem aliquet ut. Praesent sagittis elit sapien, in molestie dolor ullamcorper sed. Aenean id lectus dui. Pellentesque blandit pellentesque pretium. Nulla auctor ante id congue accumsan. Nam faucibus, dolor sit amet viverra tincidunt, sem libero euismod felis, sit amet sollicitudin neque ante in purus. Nunc fringilla odio turpis, et pharetra ipsum venenatis at.\r\n\r\nUt sit amet nibh ut erat vehicula tincidunt et vel tortor. Integer ac elit facilisis, efficitur lorem id, auctor metus. Mauris justo purus, condimentum vel orci ac, semper blandit tortor. Cras in porttitor orci. Integer ege', 'Brown Suberbra', '', 'publish', 'closed', 'closed', '', 'brown-suberbra', '', '', '2020-07-21 13:43:45', '2020-07-21 13:43:45', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=79', 0, 'house_listings', '', 0),
(80, 1, '2020-07-19 21:49:38', '2020-07-19 21:49:38', '', '', '', 'inherit', 'open', 'closed', '', 'img02', '', '', '2020-07-19 21:49:43', '2020-07-19 21:49:43', '', 79, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img02.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-07-19 21:51:16', '2020-07-19 21:51:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida felis et turpis dignissim, at sodales sapien tristique. Curabitur tempus erat leo, aliquet dictum diam convallis id. Phasellus quis pellentesque erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris rhoncus, tellus at eleifend finibus, ante elit molestie tortor, vel condimentum turpis velit facilisis enim. Nam sit amet nisi accumsan, laoreet leo ac, faucibus mauris. Cras tincidunt urna magna, accumsan euismod lorem aliquet ut. Praesent sagittis elit sapien, in molestie dolor ullamcorper sed. Aenean id lectus dui. Pellentesque blandit pellentesque pretium. Nulla auctor ante id congue accumsan. Nam faucibus, dolor sit amet viverra tincidunt, sem libero euismod felis, sit amet sollicitudin neque ante in purus. Nunc fringilla odio turpis, et pharetra ipsum venenatis at.\r\n\r\nUt sit amet nibh ut erat vehicula tincidunt et vel tortor. Integer ac elit facilisis, efficitur lorem id, auctor metus. Mauris justo purus, condimentum vel orci ac, semper blandit tortor. Cras in porttitor orci. Integer ege', 'Classy Majesty', '', 'publish', 'closed', 'closed', '', 'classy-majesty', '', '', '2020-07-21 13:43:29', '2020-07-21 13:43:29', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=81', 0, 'house_listings', '', 0),
(82, 1, '2020-07-19 21:51:09', '2020-07-19 21:51:09', '', '', '', 'inherit', 'open', 'closed', '', 'img03', '', '', '2020-07-19 21:51:13', '2020-07-19 21:51:13', '', 81, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img03.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2020-07-19 21:55:08', '2020-07-19 21:55:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida felis et turpis dignissim, at sodales sapien tristique. Curabitur tempus erat leo, aliquet dictum diam convallis id. Phasellus quis pellentesque erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris rhoncus, tellus at eleifend finibus, ante elit molestie tortor, vel condimentum turpis velit facilisis enim. Nam sit amet nisi accumsan, laoreet leo ac, faucibus mauris. Cras tincidunt urna magna, accumsan euismod lorem aliquet ut. Praesent sagittis elit sapien, in molestie dolor ullamcorper sed. Aenean id lectus dui. Pellentesque blandit pellentesque pretium. Nulla auctor ante id congue accumsan. Nam faucibus, dolor sit amet viverra tincidunt, sem libero euismod felis, sit amet sollicitudin neque ante in purus. Nunc fringilla odio turpis, et pharetra ipsum venenatis at.\r\n\r\nUt sit amet nibh ut erat vehicula tincidunt et vel tortor. Integer ac elit facilisis, efficitur lorem id, auctor metus. Mauris justo purus, condimentum vel orci ac, semper blandit tortor. Cras in porttitor orci. Integer ege', 'Cabin Log', '', 'publish', 'closed', 'closed', '', 'cabin-log', '', '', '2020-07-21 13:43:09', '2020-07-21 13:43:09', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=83', 0, 'house_listings', '', 0),
(84, 1, '2020-07-19 21:54:58', '2020-07-19 21:54:58', '', '', '', 'inherit', 'open', 'closed', '', 'img04', '', '', '2020-07-19 21:55:04', '2020-07-19 21:55:04', '', 83, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img04.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2020-07-19 21:56:27', '2020-07-19 21:56:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida felis et turpis dignissim, at sodales sapien tristique. Curabitur tempus erat leo, aliquet dictum diam convallis id. Phasellus quis pellentesque erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris rhoncus, tellus at eleifend finibus, ante elit molestie tortor, vel condimentum turpis velit facilisis enim. Nam sit amet nisi accumsan, laoreet leo ac, faucibus mauris. Cras tincidunt urna magna, accumsan euismod lorem aliquet ut. Praesent sagittis elit sapien, in molestie dolor ullamcorper sed. Aenean id lectus dui. Pellentesque blandit pellentesque pretium. Nulla auctor ante id congue accumsan. Nam faucibus, dolor sit amet viverra tincidunt, sem libero euismod felis, sit amet sollicitudin neque ante in purus. Nunc fringilla odio turpis, et pharetra ipsum venenatis at.\r\n\r\nUt sit amet nibh ut erat vehicula tincidunt et vel tortor. Integer ac elit facilisis, efficitur lorem id, auctor metus. Mauris justo purus, condimentum vel orci ac, semper blandit tortor. Cras in porttitor orci. Integer ege', 'Mr. Ulgy', '', 'publish', 'closed', 'closed', '', 'mr-ulgy', '', '', '2020-07-21 13:42:47', '2020-07-21 13:42:47', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=85', 0, 'house_listings', '', 0),
(86, 1, '2020-07-19 21:56:20', '2020-07-19 21:56:20', '', '', '', 'inherit', 'open', 'closed', '', 'img05', '', '', '2020-07-19 21:56:24', '2020-07-19 21:56:24', '', 85, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img05.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2020-07-19 21:58:00', '2020-07-19 21:58:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida felis et turpis dignissim, at sodales sapien tristique. Curabitur tempus erat leo, aliquet dictum diam convallis id. Phasellus quis pellentesque erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris rhoncus, tellus at eleifend finibus, ante elit molestie tortor, vel condimentum turpis velit facilisis enim. Nam sit amet nisi accumsan, laoreet leo ac, faucibus mauris. Cras tincidunt urna magna, accumsan euismod lorem aliquet ut. Praesent sagittis elit sapien, in molestie dolor ullamcorper sed. Aenean id lectus dui. Pellentesque blandit pellentesque pretium. Nulla auctor ante id congue accumsan. Nam faucibus, dolor sit amet viverra tincidunt, sem libero euismod felis, sit amet sollicitudin neque ante in purus. Nunc fringilla odio turpis, et pharetra ipsum venenatis at.\r\n\r\nUt sit amet nibh ut erat vehicula tincidunt et vel tortor. Integer ac elit facilisis, efficitur lorem id, auctor metus. Mauris justo purus, condimentum vel orci ac, semper blandit tortor. Cras in porttitor orci. Integer ege', 'Local Buddy', '', 'publish', 'closed', 'closed', '', 'local-buddy', '', '', '2020-07-21 13:42:26', '2020-07-21 13:42:26', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=87', 0, 'house_listings', '', 0),
(88, 1, '2020-07-19 21:57:49', '2020-07-19 21:57:49', '', '', '', 'inherit', 'open', 'closed', '', 'img06', '', '', '2020-07-19 21:57:54', '2020-07-19 21:57:54', '', 87, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img06.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2020-07-21 15:38:36', '2020-07-21 15:38:36', '', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2020-07-21 15:39:04', '2020-07-21 15:39:04', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=89', 0, 'house_listings', '', 0),
(90, 1, '2020-07-21 16:03:47', '2020-07-21 16:03:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"agent_profile\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Agent Profiles', 'agent-profiles', 'publish', 'closed', 'closed', '', 'group_5f17115f04fbd', '', '', '2020-07-22 10:44:45', '2020-07-22 10:44:45', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field-group&#038;p=90', 0, 'acf-field-group', '', 0),
(91, 1, '2020-07-21 16:03:47', '2020-07-21 16:03:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5f17117744330', '', '', '2020-07-21 16:03:47', '2020-07-21 16:03:47', '', 90, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=91', 0, 'acf-field', '', 0),
(94, 1, '2020-07-22 10:10:41', '2020-07-22 10:10:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"What is the title of the agent?\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5f17123bf2025', '', '', '2020-07-22 10:10:41', '2020-07-22 10:10:41', '', 90, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=94', 1, 'acf-field', '', 0),
(95, 1, '2020-07-22 10:10:41', '2020-07-22 10:10:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"Enter agent phone number...\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'phone number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_5f17125af2026', '', '', '2020-07-22 10:41:46', '2020-07-22 10:41:46', '', 90, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=95', 3, 'acf-field', '', 0),
(96, 1, '2020-07-22 10:10:41', '2020-07-22 10:10:41', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:30:\"Does this agent have Facebook?\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5f171301f2027', '', '', '2020-07-22 10:41:46', '2020-07-22 10:41:46', '', 90, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=96', 4, 'acf-field', '', 0),
(97, 1, '2020-07-22 10:22:20', '2020-07-22 10:22:20', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:33:\"Does this realtor have instagram?\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5f18132c13140', '', '', '2020-07-22 10:41:46', '2020-07-22 10:41:46', '', 90, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=97', 5, 'acf-field', '', 0),
(99, 1, '2020-07-22 10:25:20', '2020-07-22 10:25:20', '', 'Lesa Mayo', '', 'publish', 'closed', 'closed', '', 'lesa-mayo', '', '', '2020-07-22 10:45:55', '2020-07-22 10:45:55', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=agent_profile&#038;p=99', 0, 'agent_profile', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(100, 1, '2020-07-22 10:24:32', '2020-07-22 10:24:32', '', '', '', 'inherit', 'open', 'closed', '', 'agent05', '', '', '2020-07-22 10:24:36', '2020-07-22 10:24:36', '', 99, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/agent05.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2020-07-22 10:26:43', '2020-07-22 10:26:43', '', 'Annabell Williams', '', 'publish', 'closed', 'closed', '', 'annabell-williams', '', '', '2020-07-22 10:45:40', '2020-07-22 10:45:40', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=agent_profile&#038;p=101', 0, 'agent_profile', '', 0),
(102, 1, '2020-07-22 10:26:14', '2020-07-22 10:26:14', '', '', '', 'inherit', 'open', 'closed', '', 'agent02', '', '', '2020-07-22 10:26:18', '2020-07-22 10:26:18', '', 101, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/agent02.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2020-07-22 10:27:28', '2020-07-22 10:27:28', '', 'Mike Dugol', '', 'publish', 'closed', 'closed', '', 'mike-dugol', '', '', '2020-07-22 10:45:18', '2020-07-22 10:45:18', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=agent_profile&#038;p=103', 0, 'agent_profile', '', 0),
(104, 1, '2020-07-22 10:27:05', '2020-07-22 10:27:05', '', '', '', 'inherit', 'open', 'closed', '', 'agent03', '', '', '2020-07-22 10:27:09', '2020-07-22 10:27:09', '', 103, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/agent03.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2020-07-22 10:28:26', '2020-07-22 10:28:26', '', 'Shawn Cool', '', 'publish', 'closed', 'closed', '', 'shawn-cool', '', '', '2020-07-22 11:07:55', '2020-07-22 11:07:55', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=agent_profile&#038;p=105', 0, 'agent_profile', '', 0),
(106, 1, '2020-07-22 10:27:55', '2020-07-22 10:27:55', '', '', '', 'inherit', 'open', 'closed', '', 'agent04', '', '', '2020-07-22 10:27:59', '2020-07-22 10:27:59', '', 105, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/agent04.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2020-07-22 10:41:36', '2020-07-22 10:41:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"enter name of real estate agent\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_5f1817c06348d', '', '', '2020-07-22 10:41:46', '2020-07-22 10:41:46', '', 90, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=107', 2, 'acf-field', '', 0),
(108, 1, '2020-07-23 00:07:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-23 00:07:35', '0000-00-00 00:00:00', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=108', 1, 'nav_menu_item', '', 0),
(109, 1, '2020-07-23 00:08:12', '2020-07-23 00:08:12', '', 'Teams', '', 'publish', 'closed', 'closed', '', 'teams', '', '', '2020-07-23 00:08:12', '2020-07-23 00:08:12', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=109', 0, 'page', '', 0),
(110, 1, '2020-07-23 00:08:12', '2020-07-23 00:08:12', '', 'Teams', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2020-07-23 00:08:12', '2020-07-23 00:08:12', '', 109, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-07-23 00:08:25', '2020-07-23 00:08:25', '', 'Careers', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2020-07-23 00:08:25', '2020-07-23 00:08:25', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=111', 0, 'page', '', 0),
(112, 1, '2020-07-23 00:08:25', '2020-07-23 00:08:25', '', 'Careers', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2020-07-23 00:08:25', '2020-07-23 00:08:25', '', 111, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-07-23 00:08:42', '2020-07-23 00:08:42', '', 'Investors', '', 'publish', 'closed', 'closed', '', 'investors', '', '', '2020-07-23 00:08:42', '2020-07-23 00:08:42', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=113', 0, 'page', '', 0),
(114, 1, '2020-07-23 00:08:42', '2020-07-23 00:08:42', '', 'Investors', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2020-07-23 00:08:42', '2020-07-23 00:08:42', '', 113, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2020-07-23 00:09:04', '2020-07-23 00:09:04', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-07-23 00:09:04', '2020-07-23 00:09:04', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=115', 0, 'page', '', 0),
(116, 1, '2020-07-23 00:09:04', '2020-07-23 00:09:04', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2020-07-23 00:09:04', '2020-07-23 00:09:04', '', 115, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2020-07-23 00:09:23', '2020-07-23 00:09:23', '', 'Offices', '', 'publish', 'closed', 'closed', '', 'offices', '', '', '2020-07-23 00:09:23', '2020-07-23 00:09:23', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=117', 0, 'page', '', 0),
(118, 1, '2020-07-23 00:09:23', '2020-07-23 00:09:23', '', 'Offices', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-07-23 00:09:23', '2020-07-23 00:09:23', '', 117, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2020-07-23 00:09:47', '2020-07-23 00:09:47', '', 'Agent Experience', '', 'publish', 'closed', 'closed', '', 'agent-experience', '', '', '2020-07-23 00:09:47', '2020-07-23 00:09:47', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=119', 0, 'page', '', 0),
(120, 1, '2020-07-23 00:09:47', '2020-07-23 00:09:47', '', 'Agent Experience', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2020-07-23 00:09:47', '2020-07-23 00:09:47', '', 119, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2020-07-23 00:11:25', '2020-07-23 00:11:25', '', 'Bridges Loan Services', '', 'publish', 'closed', 'closed', '', 'bridges-loan-services', '', '', '2020-07-23 00:11:25', '2020-07-23 00:11:25', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=121', 0, 'page', '', 0),
(122, 1, '2020-07-23 00:11:25', '2020-07-23 00:11:25', '', 'Bridges Loan Services', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2020-07-23 00:11:25', '2020-07-23 00:11:25', '', 121, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/121-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2020-07-23 00:11:44', '2020-07-23 00:11:44', '', 'Find an Agent', '', 'publish', 'closed', 'closed', '', 'find-an-agent', '', '', '2020-07-23 00:11:44', '2020-07-23 00:11:44', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=123', 0, 'page', '', 0),
(124, 1, '2020-07-23 00:11:44', '2020-07-23 00:11:44', '', 'Find an Agent', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-07-23 00:11:44', '2020-07-23 00:11:44', '', 123, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2020-07-23 00:12:04', '2020-07-23 00:12:04', '', 'New Development', '', 'publish', 'closed', 'closed', '', 'new-development', '', '', '2020-07-23 00:12:04', '2020-07-23 00:12:04', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=125', 0, 'page', '', 0),
(126, 1, '2020-07-23 00:12:04', '2020-07-23 00:12:04', '', 'New Development', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2020-07-23 00:12:04', '2020-07-23 00:12:04', '', 125, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/125-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2020-07-23 00:12:26', '2020-07-23 00:12:26', '', 'Market Research', '', 'publish', 'closed', 'closed', '', 'market-research', '', '', '2020-07-23 00:12:26', '2020-07-23 00:12:26', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?page_id=127', 0, 'page', '', 0),
(128, 1, '2020-07-23 00:12:26', '2020-07-23 00:12:26', '', 'Market Research', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2020-07-23 00:12:26', '2020-07-23 00:12:26', '', 127, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/127-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2020-07-23 00:13:27', '2020-07-23 00:13:27', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2020-07-23 00:38:56', '2020-07-23 00:38:56', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=129', 1, 'nav_menu_item', '', 0),
(130, 1, '2020-07-23 00:13:27', '2020-07-23 00:13:27', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2020-07-23 00:38:56', '2020-07-23 00:38:56', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=130', 2, 'nav_menu_item', '', 0),
(131, 1, '2020-07-23 00:13:27', '2020-07-23 00:13:27', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2020-07-23 00:38:56', '2020-07-23 00:38:56', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=131', 3, 'nav_menu_item', '', 0),
(132, 1, '2020-07-23 00:13:27', '2020-07-23 00:13:27', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2020-07-23 00:38:56', '2020-07-23 00:38:56', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=132', 4, 'nav_menu_item', '', 0),
(133, 1, '2020-07-23 00:13:27', '2020-07-23 00:13:27', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2020-07-23 00:38:56', '2020-07-23 00:38:56', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=133', 5, 'nav_menu_item', '', 0),
(134, 1, '2020-07-23 00:13:27', '2020-07-23 00:13:27', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2020-07-23 00:38:56', '2020-07-23 00:38:56', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=134', 6, 'nav_menu_item', '', 0),
(135, 1, '2020-07-23 00:13:27', '2020-07-23 00:13:27', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2020-07-23 00:38:56', '2020-07-23 00:38:56', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=135', 7, 'nav_menu_item', '', 0),
(136, 1, '2020-07-23 00:29:27', '2020-07-23 00:29:27', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2020-07-23 00:39:15', '2020-07-23 00:39:15', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=136', 1, 'nav_menu_item', '', 0),
(137, 1, '2020-07-23 00:29:27', '2020-07-23 00:29:27', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2020-07-23 00:39:15', '2020-07-23 00:39:15', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=137', 2, 'nav_menu_item', '', 0),
(138, 1, '2020-07-23 00:29:27', '2020-07-23 00:29:27', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2020-07-23 00:39:15', '2020-07-23 00:39:15', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=138', 3, 'nav_menu_item', '', 0),
(139, 1, '2020-07-23 00:29:27', '2020-07-23 00:29:27', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2020-07-23 00:39:15', '2020-07-23 00:39:15', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?p=139', 4, 'nav_menu_item', '', 0),
(140, 1, '2020-07-23 00:42:44', '2020-07-23 00:42:44', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-23 00:42:44', '2020-07-23 00:42:44', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/23/44-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2020-07-24 04:02:24', '2020-07-24 04:02:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:25:\"page-template-aboutus.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'logo', 'logo', 'trash', 'closed', 'closed', '', 'group_5f1a5d28d7288__trashed', '', '', '2020-07-27 00:20:47', '2020-07-27 00:20:47', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field-group&#038;p=141', 0, 'acf-field-group', '', 0),
(142, 1, '2020-07-24 04:02:24', '2020-07-24 04:02:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'trash', 'closed', 'closed', '', 'field_5f1a5d2f1b933__trashed', '', '', '2020-07-27 00:20:47', '2020-07-27 00:20:47', '', 141, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=142', 0, 'acf-field', '', 0),
(143, 1, '2020-07-24 04:02:44', '2020-07-24 04:02:44', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-24 04:02:44', '2020-07-24 04:02:44', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/24/44-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2020-07-26 04:10:32', '2020-07-26 04:10:32', '', 'Property Search', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-07-26 04:10:32', '2020-07-26 04:10:32', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/26/32-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2020-07-26 04:25:03', '2020-07-26 04:25:03', '', 'Beezy St', '', 'publish', 'closed', 'closed', '', 'beezy-st', '', '', '2020-07-26 04:25:03', '2020-07-26 04:25:03', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=146', 0, 'house_listings', '', 0),
(147, 1, '2020-07-26 04:24:51', '2020-07-26 04:24:51', '', '', '', 'inherit', 'open', 'closed', '', 'img13', '', '', '2020-07-26 04:24:57', '2020-07-26 04:24:57', '', 146, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img13.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2020-07-26 04:28:03', '2020-07-26 04:28:03', '', 'Wonderful St', '', 'publish', 'closed', 'closed', '', 'wonderful-st', '', '', '2020-07-26 04:28:03', '2020-07-26 04:28:03', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=148', 0, 'house_listings', '', 0),
(149, 1, '2020-07-26 04:27:55', '2020-07-26 04:27:55', '', '', '', 'inherit', 'open', 'closed', '', 'img07', '', '', '2020-07-26 04:27:59', '2020-07-26 04:27:59', '', 148, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img07.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2020-07-26 04:29:11', '2020-07-26 04:29:11', '', 'Water St', '', 'publish', 'closed', 'closed', '', 'water-st', '', '', '2020-07-26 04:29:11', '2020-07-26 04:29:11', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=150', 0, 'house_listings', '', 0),
(151, 1, '2020-07-26 04:29:02', '2020-07-26 04:29:02', '', '', '', 'inherit', 'open', 'closed', '', 'img08jpg', '', '', '2020-07-26 04:29:06', '2020-07-26 04:29:06', '', 150, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img08jpg.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2020-07-26 04:30:33', '2020-07-26 04:30:33', '', 'Desert Rd', '', 'publish', 'closed', 'closed', '', 'desert-rd', '', '', '2020-07-26 04:30:33', '2020-07-26 04:30:33', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=152', 0, 'house_listings', '', 0),
(153, 1, '2020-07-26 04:30:22', '2020-07-26 04:30:22', '', '', '', 'inherit', 'open', 'closed', '', 'img09', '', '', '2020-07-26 04:30:28', '2020-07-26 04:30:28', '', 152, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img09.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2020-07-26 04:31:39', '2020-07-26 04:31:39', '', 'Woods Cir', '', 'publish', 'closed', 'closed', '', 'woods-cir', '', '', '2020-07-26 04:31:39', '2020-07-26 04:31:39', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=154', 0, 'house_listings', '', 0),
(155, 1, '2020-07-26 04:31:29', '2020-07-26 04:31:29', '', '', '', 'inherit', 'open', 'closed', '', 'img10', '', '', '2020-07-26 04:31:36', '2020-07-26 04:31:36', '', 154, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img10.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2020-07-26 04:32:55', '2020-07-26 04:32:55', '', 'Night Rd', '', 'publish', 'closed', 'closed', '', 'night-rd', '', '', '2020-07-26 04:32:55', '2020-07-26 04:32:55', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=house_listings&#038;p=156', 0, 'house_listings', '', 0),
(157, 1, '2020-07-26 04:32:36', '2020-07-26 04:32:36', '', '', '', 'inherit', 'open', 'closed', '', 'img13-2', '', '', '2020-07-26 04:32:51', '2020-07-26 04:32:51', '', 156, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/img13-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2020-07-26 23:32:54', '2020-07-26 23:32:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'hero image', 'hero_image', 'publish', 'closed', 'closed', '', 'field_5f1e128a82c00', '', '', '2020-07-26 23:32:54', '2020-07-26 23:32:54', '', 21, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=159', 2, 'acf-field', '', 0),
(160, 1, '2020-07-26 23:33:36', '2020-07-26 23:33:36', '', 'Property Search', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-07-26 23:33:36', '2020-07-26 23:33:36', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/26/32-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2020-07-26 23:36:44', '2020-07-26 23:36:44', '', 'Property Search', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-07-26 23:36:44', '2020-07-26 23:36:44', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/26/32-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2020-07-26 23:49:30', '2020-07-26 23:49:30', '', 'Property Search', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-07-26 23:49:30', '2020-07-26 23:49:30', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/26/32-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2020-07-26 23:53:41', '2020-07-26 23:53:41', '', '', '', 'inherit', 'open', 'closed', '', '3rd-house', '', '', '2020-07-26 23:53:49', '2020-07-26 23:53:49', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/3rd-house.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2020-07-26 23:53:52', '2020-07-26 23:53:52', '', 'Property Search', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-07-26 23:53:52', '2020-07-26 23:53:52', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/26/32-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2020-07-26 23:57:02', '2020-07-26 23:57:02', '', '', '', 'inherit', 'open', 'closed', '', 'the-best-online-property-search-tool-for-2019', '', '', '2020-07-26 23:57:08', '2020-07-26 23:57:08', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/The-Best-Online-Property-Search-Tool-for-2019.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2020-07-26 23:57:11', '2020-07-26 23:57:11', '', 'Property Search', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-07-26 23:57:11', '2020-07-26 23:57:11', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/26/32-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2020-07-27 00:16:38', '2020-07-27 00:16:38', '', 'Property Search', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-07-27 00:16:38', '2020-07-27 00:16:38', '', 32, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/27/32-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2020-07-27 00:21:16', '2020-07-27 00:21:16', '', '', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2020-07-27 00:21:21', '2020-07-27 00:21:21', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/Image.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2020-07-27 00:21:25', '2020-07-27 00:21:25', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-27 00:21:25', '2020-07-27 00:21:25', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/27/44-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2020-07-27 03:45:18', '2020-07-27 03:45:18', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-27 03:45:18', '2020-07-27 03:45:18', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/27/44-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2020-07-27 03:48:38', '2020-07-27 03:48:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title text sub', 'title_text_sub', 'publish', 'closed', 'closed', '', 'field_5f1e4e809739f', '', '', '2020-07-27 03:48:38', '2020-07-27 03:48:38', '', 21, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=171', 3, 'acf-field', '', 0),
(172, 1, '2020-07-27 03:49:24', '2020-07-27 03:49:24', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-27 03:49:24', '2020-07-27 03:49:24', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/27/44-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2020-07-27 04:09:14', '2020-07-27 04:09:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:25:\"page-template-aboutus.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Message From The Lead Realtor', 'message-from-the-lead-realtor', 'publish', 'closed', 'closed', '', 'group_5f1e5315811f9', '', '', '2020-07-27 04:51:23', '2020-07-27 04:51:23', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field-group&#038;p=173', 0, 'acf-field-group', '', 0),
(174, 1, '2020-07-27 04:09:14', '2020-07-27 04:09:14', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image agent', 'image_agent', 'publish', 'closed', 'closed', '', 'field_5f1e531ed90f7', '', '', '2020-07-27 04:09:14', '2020-07-27 04:09:14', '', 173, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&p=174', 0, 'acf-field', '', 0),
(175, 1, '2020-07-27 04:09:14', '2020-07-27 04:09:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'agent desc', 'agent_desc', 'publish', 'closed', 'closed', '', 'field_5f1e5359d90f8', '', '', '2020-07-27 04:51:23', '2020-07-27 04:51:23', '', 173, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=175', 2, 'acf-field', '', 0),
(176, 1, '2020-07-27 04:10:14', '2020-07-27 04:10:14', '', '', '', 'inherit', 'open', 'closed', '', 'kelli-pallansch-in-her-professional-headshot', '', '', '2020-07-27 04:10:22', '2020-07-27 04:10:22', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/Kelli_Pallansch_N4696_Crop32.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2020-07-27 04:10:57', '2020-07-27 04:10:57', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-27 04:10:57', '2020-07-27 04:10:57', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/27/44-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2020-07-27 04:40:57', '2020-07-27 04:40:57', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-27 04:40:57', '2020-07-27 04:40:57', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/27/44-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2020-07-27 04:44:11', '2020-07-27 04:44:11', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-27 04:44:11', '2020-07-27 04:44:11', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/27/44-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2020-07-27 04:47:49', '2020-07-27 04:47:49', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-27 04:47:49', '2020-07-27 04:47:49', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/27/44-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2020-07-27 04:50:30', '2020-07-27 04:50:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'lead title', 'lead_title', 'publish', 'closed', 'closed', '', 'field_5f1e5c9ae48c9', '', '', '2020-07-27 04:51:23', '2020-07-27 04:51:23', '', 173, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=acf-field&#038;p=182', 1, 'acf-field', '', 0),
(183, 1, '2020-07-27 04:54:54', '2020-07-27 04:54:54', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-07-27 04:54:54', '2020-07-27 04:54:54', '', 44, 'http://ezdigitalweb.com/1-wordpresssite/2020/07/27/44-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2020-07-27 05:26:40', '2020-07-27 05:26:40', '', 'Mike', '', 'publish', 'closed', 'closed', '', 'mike', '', '', '2020-07-27 05:26:40', '2020-07-27 05:26:40', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=agent_profile&#038;p=184', 0, 'agent_profile', '', 0),
(185, 1, '2020-07-27 05:26:02', '2020-07-27 05:26:02', '', '', '', 'inherit', 'open', 'closed', '', 'ben-marcum-photography-louisville-headshot-photographer-professional-headshots-first-libertyjan-09-2018256', '', '', '2020-07-27 05:26:08', '2020-07-27 05:26:08', '', 184, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/Ben-Marcum-Photography-Louisville-Headshot-Photographer-Professional-Headshots-First-LibertyJan-09-2018256.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2020-07-27 05:27:20', '2020-07-27 05:27:20', '', 'Kim', '', 'publish', 'closed', 'closed', '', 'kim', '', '', '2020-07-27 05:27:20', '2020-07-27 05:27:20', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=agent_profile&#038;p=186', 0, 'agent_profile', '', 0),
(187, 1, '2020-07-27 05:26:51', '2020-07-27 05:26:51', '', '', '', 'inherit', 'open', 'closed', '', 'business-headshots-by-philadelphia-pa-photographer-281', '', '', '2020-07-27 05:26:58', '2020-07-27 05:26:58', '', 186, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/Business-Headshots-by-Philadelphia-PA-photographer-281.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2020-07-27 05:28:02', '2020-07-27 05:28:02', '', 'Sarah', '', 'publish', 'closed', 'closed', '', 'sarah', '', '', '2020-07-27 05:32:22', '2020-07-27 05:32:22', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=agent_profile&#038;p=188', 0, 'agent_profile', '', 0),
(189, 1, '2020-07-27 05:27:32', '2020-07-27 05:27:32', '', '', '', 'inherit', 'open', 'closed', '', 'unnamed', '', '', '2020-07-27 05:27:37', '2020-07-27 05:27:37', '', 188, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/unnamed.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2020-07-27 05:28:41', '2020-07-27 05:28:41', '', 'Nancy Grace', '', 'publish', 'closed', 'closed', '', 'nancy-grace', '', '', '2020-07-27 05:31:09', '2020-07-27 05:31:09', '', 0, 'http://ezdigitalweb.com/1-wordpresssite/?post_type=agent_profile&#038;p=190', 0, 'agent_profile', '', 0),
(191, 1, '2020-07-27 05:28:11', '2020-07-27 05:28:11', '', '', '', 'inherit', 'open', 'closed', '', 'kelli-pallansch-in-her-professional-headshot-2', '', '', '2020-07-27 05:28:19', '2020-07-27 05:28:19', '', 190, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/Kelli_Pallansch_N4696_Crop32-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2020-07-27 05:30:59', '2020-07-27 05:30:59', '', '', '', 'inherit', 'open', 'closed', '', 'b732af8607e4fe5f9ab2c1ee73f75c62', '', '', '2020-07-27 05:31:05', '2020-07-27 05:31:05', '', 190, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/b732af8607e4fe5f9ab2c1ee73f75c62.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2020-07-27 05:32:14', '2020-07-27 05:32:14', '', '', '', 'inherit', 'open', 'closed', '', 'shabana-2', '', '', '2020-07-27 05:32:19', '2020-07-27 05:32:19', '', 188, 'http://ezdigitalweb.com/1-wordpresssite/wp-content/uploads/2020/07/Shabana-2.jpeg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Company footer menu', 'company-footer-menu', 0),
(4, 'Explore footer menu', 'explore-footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(46, 2, 0),
(52, 2, 0),
(129, 3, 0),
(130, 3, 0),
(131, 3, 0),
(132, 3, 0),
(133, 3, 0),
(134, 3, 0),
(135, 3, 0),
(136, 4, 0),
(137, 4, 0),
(138, 4, 0),
(139, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"f157e827cb0cd11d0c22c6044e61ffe5148ed8ad1d881460155cfa886937dd9a\";a:4:{s:10:\"expiration\";i:1595906744;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1595733944;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1594901387'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_5f13d73277449\";}'),
(23, 1, 'metaboxhidden_page', 'a:0:{}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(27, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:47:\"acf-group_5f13d73277449,acf-group_5f1e5315811f9\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BtG9dnE1Nsi/5l8e/idFMsjviLvyAM.', 'admin', 'aricwilliamst@gmail.com', 'http://ezdigitalweb.com/1-wordpresssite', '2020-07-16 12:05:50', '', 0, 'admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=864;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
