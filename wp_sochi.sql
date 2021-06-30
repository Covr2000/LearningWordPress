-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 23 2021 г., 16:36
-- Версия сервера: 10.1.44-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp_sochi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-06-17 15:25:42', '2021-06-17 12:25:42', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://olegdenisovichasotov.developingwordpress', 'yes'),
(2, 'home', 'http://olegdenisovichasotov.developingwordpress', 'yes'),
(3, 'blogname', 'OlegDenisovichAsotov.DevelopingWordpress', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pavel1999bel@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:85:\"W:\\domains\\OlegDenisovichAsotov.DevelopingWordpress/wp-content/themes/sochi/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'sochi', 'yes'),
(41, 'stylesheet', 'sochi', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1639484742', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'ru_RU', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1624454743;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1624494343;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1624537543;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1624537561;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1624537563;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1624623943;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1623936537;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(132, '_site_transient_timeout_browser_ea88d480f2579c317791f9e3b789b1de', '1624537562', 'no'),
(133, '_site_transient_browser_ea88d480f2579c317791f9e3b789b1de', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"91.0.4472.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_97f83d63b8a66f6e8c057d89a83d8845', '1624537563', 'no'),
(135, '_site_transient_php_check_97f83d63b8a66f6e8c057d89a83d8845', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(155, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(158, 'theme_mods_sochi', 'a:15:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:9:\"logo_text\";s:10:\"Город\";s:5:\"offer\";s:62:\"А я не понимаю твоего непонимания.\";s:11:\"description\";s:166:\"Наши ангелы всегда с нами, и часто они используют чьи-нибудь губы, чтобы сказать нам что-то.1\";s:7:\"preview\";s:98:\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/эсто-садок.png\";s:8:\"img1_dev\";s:107:\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/7eb15998e77042f58314ad13a022.jpg\";s:8:\"img2_dev\";s:107:\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/7eb15998e77042f58314ad13a022.jpg\";s:8:\"img3_dev\";s:107:\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/7eb15998e77042f58314ad13a022.jpg\";s:8:\"img4_dev\";s:107:\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/7eb15998e77042f58314ad13a022.jpg\";s:10:\"img1_dev_g\";s:95:\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/sea-view-sunsets.jpg\";s:10:\"img2_dev_g\";s:95:\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/sea-view-sunsets.jpg\";s:10:\"img3_dev_g\";s:95:\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/sea-view-sunsets.jpg\";s:10:\"img4_dev_g\";s:95:\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/sea-view-sunsets.jpg\";s:11:\"custom_logo\";i:69;}', 'yes'),
(161, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1624453555;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(162, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1624453562;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(163, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1624453562;s:7:\"checked\";a:1:{s:5:\"sochi\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(164, 'current_theme', 'sochi', 'yes'),
(165, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1623937304;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(168, '_transient_twentysixteen_categories', '1', 'yes'),
(170, 'recovery_mode_email_last_sent', '1623939511', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(184, '_transient_health-check-site-status-result', '{\"good\":\"14\",\"recommended\":\"5\",\"critical\":\"1\"}', 'yes'),
(187, 'category_children', 'a:0:{}', 'yes'),
(255, '_site_transient_timeout_theme_roots', '1624455361', 'no'),
(256, '_site_transient_theme_roots', 'a:1:{s:5:\"sochi\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_customize_draft_post_name', '%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%b9%d1%82%d0%b5-%d0%b2%d0%b0%d1%88-%d1%81%d0%b0%d0%b9%d1%82-%d1%81-%d0%bf%d0%be%d0%bc%d0%be%d1%89%d1%8c%d1%8e-%d0%b1%d0%bb%d0%be%d0%ba%d0%be%d0%b2'),
(4, 5, '_customize_changeset_uuid', 'a3b6a48b-eabb-497c-a551-f1a19a0d5af1'),
(5, 6, '_customize_draft_post_name', '%d0%be-%d0%bd%d0%b0%d1%81'),
(6, 6, '_customize_changeset_uuid', 'a3b6a48b-eabb-497c-a551-f1a19a0d5af1'),
(7, 7, '_customize_draft_post_name', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b'),
(8, 7, '_customize_changeset_uuid', 'a3b6a48b-eabb-497c-a551-f1a19a0d5af1'),
(9, 8, '_customize_draft_post_name', '%d0%b1%d0%bb%d0%be%d0%b3'),
(10, 8, '_customize_changeset_uuid', 'a3b6a48b-eabb-497c-a551-f1a19a0d5af1'),
(11, 9, '_customize_restore_dismissed', '1'),
(12, 10, '_menu_item_type', 'custom'),
(13, 10, '_menu_item_menu_item_parent', '0'),
(14, 10, '_menu_item_object_id', '10'),
(15, 10, '_menu_item_object', 'custom'),
(16, 10, '_menu_item_target', ''),
(17, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 10, '_menu_item_xfn', ''),
(19, 10, '_menu_item_url', 'http://olegdenisovichasotov.developingwordpress/'),
(20, 10, '_menu_item_orphaned', '1623941564'),
(21, 11, '_menu_item_type', 'post_type'),
(22, 11, '_menu_item_menu_item_parent', '0'),
(23, 11, '_menu_item_object_id', '2'),
(24, 11, '_menu_item_object', 'page'),
(25, 11, '_menu_item_target', ''),
(26, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 11, '_menu_item_xfn', ''),
(28, 11, '_menu_item_url', ''),
(29, 11, '_menu_item_orphaned', '1623941564'),
(30, 12, '_menu_item_type', 'custom'),
(31, 12, '_menu_item_menu_item_parent', '0'),
(32, 12, '_menu_item_object_id', '12'),
(33, 12, '_menu_item_object', 'custom'),
(34, 12, '_menu_item_target', ''),
(35, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 12, '_menu_item_xfn', ''),
(37, 12, '_menu_item_url', 'http://olegdenisovichasotov.developingwordpress/'),
(47, 1, '_edit_lock', '1624034331:1'),
(48, 14, '_edit_lock', '1624026652:1'),
(49, 15, '_edit_lock', '1624034397:1'),
(51, 17, '_wp_attached_file', '2021/06/1140_758_fixedwidth.jpg'),
(52, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:758;s:4:\"file\";s:31:\"2021/06/1140_758_fixedwidth.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"1140_758_fixedwidth-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"1140_758_fixedwidth-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"1140_758_fixedwidth-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"1140_758_fixedwidth-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 21, '_wp_attached_file', '2021/06/9adb38fa-0bc2-11eb-84b6-b603a753d386.800x600.jpg'),
(55, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:56:\"2021/06/9adb38fa-0bc2-11eb-84b6-b603a753d386.800x600.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"9adb38fa-0bc2-11eb-84b6-b603a753d386.800x600-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"9adb38fa-0bc2-11eb-84b6-b603a753d386.800x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"9adb38fa-0bc2-11eb-84b6-b603a753d386.800x600-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 15, '_thumbnail_id', '50'),
(58, 23, '_edit_lock', '1624034188:1'),
(60, 23, '_thumbnail_id', '17'),
(61, 25, '_wp_attached_file', '2021/06/001.jpg'),
(62, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:725;s:4:\"file\";s:15:\"2021/06/001.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"001-300x218.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"001-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"001-768x557.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:557;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 1, '_thumbnail_id', '25'),
(65, 27, '_wp_trash_meta_status', 'publish'),
(66, 27, '_wp_trash_meta_time', '1624031843'),
(67, 28, '_wp_trash_meta_status', 'publish'),
(68, 28, '_wp_trash_meta_time', '1624031849'),
(69, 29, '_wp_trash_meta_status', 'publish'),
(70, 29, '_wp_trash_meta_time', '1624031858'),
(71, 30, '_wp_trash_meta_status', 'publish'),
(72, 30, '_wp_trash_meta_time', '1624032342'),
(73, 31, '_wp_attached_file', '2021/06/0820bd2c-1456-11eb-aa6b-4a707ba57967.800x600.jpg'),
(74, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:56:\"2021/06/0820bd2c-1456-11eb-aa6b-4a707ba57967.800x600.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"0820bd2c-1456-11eb-aa6b-4a707ba57967.800x600-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"0820bd2c-1456-11eb-aa6b-4a707ba57967.800x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"0820bd2c-1456-11eb-aa6b-4a707ba57967.800x600-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 32, '_wp_trash_meta_status', 'publish'),
(76, 32, '_wp_trash_meta_time', '1624032500'),
(77, 33, '_wp_attached_file', '2021/06/XXL.jpg'),
(78, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:15:\"2021/06/XXL.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"XXL-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"XXL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"XXL-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 34, '_wp_trash_meta_status', 'publish'),
(80, 34, '_wp_trash_meta_time', '1624032596'),
(81, 2, '_edit_lock', '1624033643:1'),
(82, 2, '_wp_trash_meta_status', 'publish'),
(83, 2, '_wp_trash_meta_time', '1624033791'),
(84, 2, '_wp_desired_post_slug', 'sample-page'),
(85, 36, '_edit_lock', '1624034265:1'),
(86, 38, '_edit_lock', '1624033707:1'),
(87, 40, '_edit_lock', '1624033916:1'),
(88, 42, '_menu_item_type', 'post_type'),
(89, 42, '_menu_item_menu_item_parent', '0'),
(90, 42, '_menu_item_object_id', '40'),
(91, 42, '_menu_item_object', 'page'),
(92, 42, '_menu_item_target', ''),
(93, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 42, '_menu_item_xfn', ''),
(95, 42, '_menu_item_url', ''),
(97, 43, '_menu_item_type', 'post_type'),
(98, 43, '_menu_item_menu_item_parent', '0'),
(99, 43, '_menu_item_object_id', '38'),
(100, 43, '_menu_item_object', 'page'),
(101, 43, '_menu_item_target', ''),
(102, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 43, '_menu_item_xfn', ''),
(104, 43, '_menu_item_url', ''),
(106, 44, '_menu_item_type', 'post_type'),
(107, 44, '_menu_item_menu_item_parent', '0'),
(108, 44, '_menu_item_object_id', '36'),
(109, 44, '_menu_item_object', 'page'),
(110, 44, '_menu_item_target', ''),
(111, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 44, '_menu_item_xfn', ''),
(113, 44, '_menu_item_url', ''),
(115, 12, '_wp_old_date', '2021-06-17'),
(116, 45, '_wp_attached_file', '2021/06/эсто-садок.png'),
(117, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:31:\"2021/06/эсто-садок.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"эсто-садок-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"эсто-садок-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"эсто-садок-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 46, '_wp_trash_meta_status', 'publish'),
(119, 46, '_wp_trash_meta_time', '1624034087'),
(121, 50, '_wp_attached_file', '2021/06/Logovo-11.verkhnee-2_20201012_144532_264.jpg'),
(122, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:52:\"2021/06/Logovo-11.verkhnee-2_20201012_144532_264.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Logovo-11.verkhnee-2_20201012_144532_264-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Logovo-11.verkhnee-2_20201012_144532_264-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"Logovo-11.verkhnee-2_20201012_144532_264-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 53, '_edit_lock', '1624279132:1'),
(126, 54, '_wp_attached_file', '2021/06/IMG_0308.jpg'),
(127, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2021/06/IMG_0308.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_0308-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_0308-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 53, '_thumbnail_id', '54'),
(130, 56, '_edit_lock', '1624035736:1'),
(131, 57, '_edit_lock', '1624035088:1'),
(132, 56, '_customize_restore_dismissed', '1'),
(133, 58, '_wp_trash_meta_status', 'publish'),
(134, 58, '_wp_trash_meta_time', '1624035754'),
(135, 59, '_wp_attached_file', '2021/06/7eb15998e77042f58314ad13a022.jpg'),
(136, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:40:\"2021/06/7eb15998e77042f58314ad13a022.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"7eb15998e77042f58314ad13a022-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"7eb15998e77042f58314ad13a022-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 60, '_wp_trash_meta_status', 'publish'),
(138, 60, '_wp_trash_meta_time', '1624038714'),
(139, 61, '_wp_attached_file', '2021/06/sea-view-sunsets.jpg'),
(140, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"file\";s:28:\"2021/06/sea-view-sunsets.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"sea-view-sunsets-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 62, '_wp_trash_meta_status', 'publish'),
(142, 62, '_wp_trash_meta_time', '1624038747'),
(143, 63, '_wp_attached_file', '2021/06/gerb_1.jpg'),
(144, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:507;s:6:\"height\";i:599;s:4:\"file\";s:18:\"2021/06/gerb_1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"gerb_1-254x300.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"gerb_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 64, '_wp_attached_file', '2021/06/cropped-gerb_1.jpg'),
(146, 64, '_wp_attachment_context', 'custom-logo'),
(147, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:134;s:6:\"height\";i:158;s:4:\"file\";s:26:\"2021/06/cropped-gerb_1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-gerb_1-134x150.jpg\";s:5:\"width\";i:134;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 65, '_edit_lock', '1624040195:1'),
(149, 66, '_wp_attached_file', '2021/06/cropped-gerb_1-1.jpg'),
(150, 66, '_wp_attachment_context', 'custom-logo'),
(151, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:71;s:4:\"file\";s:28:\"2021/06/cropped-gerb_1-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 65, '_customize_restore_dismissed', '1'),
(153, 67, '_edit_lock', '1624040374:1'),
(154, 68, '_wp_attached_file', '2021/06/gerb_1.png'),
(155, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:507;s:6:\"height\";i:599;s:4:\"file\";s:18:\"2021/06/gerb_1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"gerb_1-254x300.png\";s:5:\"width\";i:254;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"gerb_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 69, '_wp_attached_file', '2021/06/cropped-gerb_1.png'),
(157, 69, '_wp_attachment_context', 'custom-logo'),
(158, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:71;s:4:\"file\";s:26:\"2021/06/cropped-gerb_1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 67, '_wp_trash_meta_status', 'publish'),
(160, 67, '_wp_trash_meta_time', '1624040415');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-06-17 15:25:42', '2021-06-17 12:25:42', '<!-- wp:paragraph -->\n<p>Для обеспечения безопасности в условиях пандемии власти примут меры для разведения потоков туристов, сообщил в понедельник, 23 ноября, губернатор Краснодарского края Вениамин Кондратьев.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"В горном кластере Сочи уже забронировано почти 90% номеров на период новогодних праздников, мы ожидаем около 300 тыс. человек. Наша первоочередная задача - обеспечить их безопасность в сегодняшних непростых условиях. На регулярной основе, без остановки работы, будет проводиться санитарная обработка кабинок канатных дорог. Также предусмотрена бесконтактная продажа электронных ски-пассов. В этом году будем максимально разводить потоки туристов и спортсменов\", - сказал глава региона.</p>\n<!-- /wp:paragraph -->', 'ГОРНЫЙ КЛАСТЕР СОЧИ НА НОВОГОДНИЕ ПРАЗДНИКИ ПРИМЕТ БОЛЬШЕ 300 ТЫСЯЧ ОТДЫХАЮЩИХ', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2021-06-18 19:41:14', '2021-06-18 16:41:14', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-06-17 15:25:42', '2021-06-17 12:25:42', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://olegdenisovichasotov.developingwordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-06-18 19:29:51', '2021-06-18 16:29:51', '', 0, 'http://olegdenisovichasotov.developingwordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-06-17 15:25:42', '2021-06-17 12:25:42', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://olegdenisovichasotov.developingwordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-06-17 15:25:42', '2021-06-17 12:25:42', '', 0, 'http://olegdenisovichasotov.developingwordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-06-17 15:26:03', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-17 15:26:03', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2021-06-17 15:32:43', '0000-00-00 00:00:00', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Создайте ваш сайт с помощью блоков</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://olegdenisovichasotov.developingwordpress/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Trémières&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://olegdenisovichasotov.developingwordpress/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;В Булонском лесу&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://olegdenisovichasotov.developingwordpress/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Молодая женщина в фиолетовом&#8221; Берта Моризо\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Добавьте паттерны блоков</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Паттерны блоков - заранее оформленные группы блоков. Для того, чтобы добавить такую группу, выберите кнопку добавления блока [+] в панели инструментов в верхней части редактора. Переключите вкладку на &quot;Паттерны&quot; под строкой поиска и выберите паттерн.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Кадрируйте ваши изображения</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает стильные границы для содержимого. Выделив блок изображения, откройте &quot;Стили&quot; на боковой панели. Выберите стиль блока &quot;Кадр&quot; для активации.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Перекрывающиеся столбцы</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One включает перекрывающийся стиль для блоков столбцов. Выделив блок столбца, откройте &quot;Стили&quot; на боковой панели редактора. Выберите стиль &quot;Перекрытие&quot;.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Нужна помощь?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Прочитайте документацию темы</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Посетите форум поддержки</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Создайте ваш сайт с помощью блоков', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-17 15:32:42', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-06-17 15:32:43', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-17 15:32:43', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-06-17 15:32:43', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-17 15:32:43', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-06-17 15:32:43', '0000-00-00 00:00:00', '', 'Блог', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-06-17 15:32:43', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-06-17 15:32:43', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://olegdenisovichasotov.developingwordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-17 12:32:43\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'a3b6a48b-eabb-497c-a551-f1a19a0d5af1', '', '', '2021-06-17 15:32:43', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2021-06-17 17:52:44', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-06-17 17:52:44', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2021-06-17 17:52:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-06-17 17:52:44', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2021-06-18 19:32:48', '2021-06-17 14:53:38', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2021-06-18 19:32:48', '2021-06-18 16:32:48', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=12', 1, 'nav_menu_item', '', 0),
(14, 1, '2021-06-18 17:33:04', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-18 17:33:04', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=14', 0, 'post', '', 0),
(15, 1, '2021-06-18 17:39:53', '2021-06-18 14:39:53', '<!-- wp:paragraph -->\n<p>Накануне на курорте стартовал долгожданный старт голосования на имя котенка леопарда.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Традиционно имя новорожденному леопарду выберут пользователи социальных сетей. Вчера Сочинский национальный парк объявил о старте заключительного этапа конкура. Котенок родился минувшим летом в Центре восстановления леопарда на Кавказе ФГБУ «Сочинский национальный парк». Не так давно специалисты определили пол малыша: леопард оказался мужского пола.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«Мы принимали заявки с конкурсными именами больше двух месяцев. За это время в редакцию пресс-службы от вас поступило более 500 самых разнообразных имён — как мужских, так и женских. Жюри, в состав которого входят представители Сочинского национального парка, Центра восстановления леопарда на Кавказе и хоккейного клуба «Сочи», провело большую работу по сбору всех вариантов и их сортировке, чтобы выбрать пять лучших из них»,-&nbsp;рассказывают сотрудники нацпарка.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Так, лучшими вариантами для голосования стали: Лео, Архыз, Джамал, Алмаз и Симба. Именно они будут участвовать в народном конкурсе.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Голосование проходит в группе Сочинского национального парка в социальной сети «ВКонтакте» до 23 ноября.</p>\n<!-- /wp:paragraph -->', 'РОССИЯНЕ ВЫБЕРУТ ИМЯ ДЛЯ ЛЕОПАРДА, РОДИВШЕГОСЯ В СОЧИ', '', 'publish', 'open', 'open', '', '%d1%82%d0%b5%d1%81%d1%82-2', '', '', '2021-06-18 19:40:12', '2021-06-18 16:40:12', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=15', 0, 'post', '', 0),
(16, 1, '2021-06-18 17:39:53', '2021-06-18 14:39:53', '<!-- wp:paragraph -->\n<p>Боятся смерти не имеет никакого смысла.</p>\n<!-- /wp:paragraph -->', 'Тест 2', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-06-18 17:39:53', '2021-06-18 14:39:53', '', 15, 'http://olegdenisovichasotov.developingwordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-06-18 17:43:55', '2021-06-18 14:43:55', '', '1140_758_fixedwidth', '', 'inherit', 'open', 'closed', '', '1140_758_fixedwidth', '', '', '2021-06-18 17:43:55', '2021-06-18 14:43:55', '', 15, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/1140_758_fixedwidth.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2021-06-18 17:44:08', '2021-06-18 14:44:08', '<!-- wp:paragraph -->\n<p>Боятся смерти не&nbsp;имеет никакого смысла.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/1140_758_fixedwidth-1024x681.jpg\" alt=\"\" class=\"wp-image-17\"/></figure>\n<!-- /wp:image -->', 'Тест 2', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-06-18 17:44:08', '2021-06-18 14:44:08', '', 15, 'http://olegdenisovichasotov.developingwordpress/?p=19', 0, 'revision', '', 0),
(21, 1, '2021-06-18 17:56:33', '2021-06-18 14:56:33', '', '9adb38fa-0bc2-11eb-84b6-b603a753d386.800x600', '', 'inherit', 'open', 'closed', '', '9adb38fa-0bc2-11eb-84b6-b603a753d386-800x600', '', '', '2021-06-18 17:56:33', '2021-06-18 14:56:33', '', 15, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/9adb38fa-0bc2-11eb-84b6-b603a753d386.800x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2021-06-18 17:56:42', '2021-06-18 14:56:42', '<!-- wp:paragraph -->\n<p>Боятся смерти не&nbsp;имеет никакого смысла.</p>\n<!-- /wp:paragraph -->', 'Тест 2', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-06-18 17:56:42', '2021-06-18 14:56:42', '', 15, 'http://olegdenisovichasotov.developingwordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-06-18 17:58:20', '2021-06-18 14:58:20', '<!-- wp:paragraph -->\n<p>В горах Сочи туристов предупредили о налипании мокрого снега и гололедице.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«Кабы не было зимы в городах и селах, никогда б не знали мы этих дней веселых…», -&nbsp;строчки из всеми любимой песни едва ли были посвящены горнолыжным развлечениям, однако вполне красочно подходят для описания зимнего сезона в Сочи. А пока курорты готовятся к предстоящему сезону, погода продолжает «намекать» на его скорое открытие.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Так, гостям курортов Красной Поляны необходимо взять во внимание предупреждение МЧС. В силу мокрого снега здесь имеется вероятность его налипания на проводах и деревьях. Кроме того, нужно быть максимально осторожными, поскольку на дорогах возможна гололедица.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«По прогнозам метеорологов, ночью и утром 25 ноября в предгорной и горной зонах Сочи ожидается местами налипание мокрого снега на проводах и деревьях», -&nbsp;говорится в сообщении администрации города-курорта.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Однако временное ухудшение погодных условий – вовсе не повод забыть о развлечениях. На всех горных курортах Сочи сейчас функционируют десятки кафе, ресторанов, развлекательных и торговых комплексов, где можно тепло и весело провести свой досуг.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Спасатели рекомендуют жителям и гостям Сочи соблюдать все необходимые меры предосторожности, временно отказаться от отдыха в горах.</p>\n<!-- /wp:paragraph -->', 'ТУРИСТОВ ПРЕДУПРЕДИЛИ О НЕПОГОДЕ', '', 'publish', 'open', 'open', '', '%d1%82%d0%b5%d1%81%d1%82-3', '', '', '2021-06-18 19:38:51', '2021-06-18 16:38:51', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=23', 0, 'post', '', 0),
(24, 1, '2021-06-18 17:58:20', '2021-06-18 14:58:20', '<!-- wp:paragraph -->\n<p>Разумеется, людям не нравится, когда ты не такой, как они. Они будут долго тебя высмеивать, осуждать, унижать, но это все происходит от зависти. Они не могут так, как ты, у них духу не хватает. Проще назвать кого-то психом, чем признать, что тебе страшно отличиться от толпы.</p>\n<!-- /wp:paragraph -->', 'Тест 3', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-06-18 17:58:20', '2021-06-18 14:58:20', '', 23, 'http://olegdenisovichasotov.developingwordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-06-18 17:59:13', '2021-06-18 14:59:13', '', '001', '', 'inherit', 'open', 'closed', '', '001', '', '', '2021-06-18 17:59:13', '2021-06-18 14:59:13', '', 1, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/001.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2021-06-18 17:59:22', '2021-06-18 14:59:22', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-06-18 17:59:22', '2021-06-18 14:59:22', '', 1, 'http://olegdenisovichasotov.developingwordpress/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-06-18 18:57:23', '2021-06-18 15:57:23', '{\n    \"sochi::logo_text\": {\n        \"value\": \"\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 15:57:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7e2dbb7e-9d85-4bba-8c5c-155fad0427ea', '', '', '2021-06-18 18:57:23', '2021-06-18 15:57:23', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/7e2dbb7e-9d85-4bba-8c5c-155fad0427ea/', 0, 'customize_changeset', '', 0),
(28, 1, '2021-06-18 18:57:29', '2021-06-18 15:57:29', '{\n    \"sochi::offer\": {\n        \"value\": \"\\u0410 \\u044f \\u043d\\u0435 \\u043f\\u043e\\u043d\\u0438\\u043c\\u0430\\u044e \\u0442\\u0432\\u043e\\u0435\\u0433\\u043e \\u043d\\u0435\\u043f\\u043e\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044f.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 15:57:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '23e9379d-7b2f-423b-8e88-dde113ed6ff2', '', '', '2021-06-18 18:57:29', '2021-06-18 15:57:29', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/23e9379d-7b2f-423b-8e88-dde113ed6ff2/', 0, 'customize_changeset', '', 0),
(29, 1, '2021-06-18 18:57:38', '2021-06-18 15:57:38', '{\n    \"sochi::description\": {\n        \"value\": \"\\u041d\\u0430\\u0448\\u0438 \\u0430\\u043d\\u0433\\u0435\\u043b\\u044b \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0441 \\u043d\\u0430\\u043c\\u0438, \\u0438 \\u0447\\u0430\\u0441\\u0442\\u043e \\u043e\\u043d\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442 \\u0447\\u044c\\u0438-\\u043d\\u0438\\u0431\\u0443\\u0434\\u044c \\u0433\\u0443\\u0431\\u044b, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0441\\u043a\\u0430\\u0437\\u0430\\u0442\\u044c \\u043d\\u0430\\u043c \\u0447\\u0442\\u043e-\\u0442\\u043e.1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 15:57:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '92214319-2732-4a3b-aeb2-edf95decf8dd', '', '', '2021-06-18 18:57:38', '2021-06-18 15:57:38', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/92214319-2732-4a3b-aeb2-edf95decf8dd/', 0, 'customize_changeset', '', 0),
(30, 1, '2021-06-18 19:05:42', '2021-06-18 16:05:42', '{\n    \"sochi::preview\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/9adb38fa-0bc2-11eb-84b6-b603a753d386.800x600.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 16:05:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b63fd7fc-d3f3-4108-a3f7-5d5c18026609', '', '', '2021-06-18 19:05:42', '2021-06-18 16:05:42', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/b63fd7fc-d3f3-4108-a3f7-5d5c18026609/', 0, 'customize_changeset', '', 0),
(31, 1, '2021-06-18 19:08:01', '2021-06-18 16:08:01', '', '0820bd2c-1456-11eb-aa6b-4a707ba57967.800x600', '', 'inherit', 'open', 'closed', '', '0820bd2c-1456-11eb-aa6b-4a707ba57967-800x600', '', '', '2021-06-18 19:08:01', '2021-06-18 16:08:01', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/0820bd2c-1456-11eb-aa6b-4a707ba57967.800x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2021-06-18 19:08:20', '2021-06-18 16:08:20', '{\n    \"sochi::preview\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/0820bd2c-1456-11eb-aa6b-4a707ba57967.800x600.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 16:08:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a9a79928-3500-4c39-ace2-5e2ad596a58e', '', '', '2021-06-18 19:08:20', '2021-06-18 16:08:20', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/a9a79928-3500-4c39-ace2-5e2ad596a58e/', 0, 'customize_changeset', '', 0),
(33, 1, '2021-06-18 19:09:32', '2021-06-18 16:09:32', '', 'XXL', '', 'inherit', 'open', 'closed', '', 'xxl', '', '', '2021-06-18 19:09:32', '2021-06-18 16:09:32', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/XXL.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2021-06-18 19:09:56', '2021-06-18 16:09:56', '{\n    \"sochi::preview\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/XXL.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 16:09:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2722f3f7-7834-47f3-97fc-5e15658e7dfa', '', '', '2021-06-18 19:09:56', '2021-06-18 16:09:56', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/2722f3f7-7834-47f3-97fc-5e15658e7dfa/', 0, 'customize_changeset', '', 0),
(35, 1, '2021-06-18 19:29:51', '2021-06-18 16:29:51', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://olegdenisovichasotov.developingwordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-06-18 19:29:51', '2021-06-18 16:29:51', '', 2, 'http://olegdenisovichasotov.developingwordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-06-18 19:30:31', '2021-06-18 16:30:31', '<!-- wp:paragraph -->\n<p>О Сочи</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Город Сочи – один из самых красивых, уникальных и протяженных городов России. На 145 км вдоль побережья Черного моря раскинулся этот удивительный по красоте город. Сегодня Сочи является самым крупным курортным городом России, важным транспортным узлом и крупным экономическим и культурным центром черноморского побережья России. Курорт Сочи – это не только популярный город с множеством отелей, гостиниц, пансионатов и санаториев. Это не просто море и горы. Уникальные хребты и перевалы, извилистые каньоны и чарующие водопады, древние пещеры и мистические дольмены. Только здесь, благодаря субтропическому климату можно увидеть самые северные в мире плантации чая, а также растущие в естественных условиях магнолии, эвкалипты и пальмы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Гости, приезжающие в Сочи, попадают в атмосферу оздоровления, пляжного отдыха и развлечений, спортивного духа, зрелищных мероприятий и экскурсий. Курорт Сочи знаменит своими рекреационными объектами и природными памятниками. 80% территории муниципального образования является особо охраняемой природной территорией. Протяженность благоустроенной пляжной зоны составляет почти 118 км, где каждый может выбрать гостиницу или отель по своему вкусу. Это и поражающие архитектурными изысками исторические гостиницы, построенные в советское время и реконструированные в наши дни, и строгие современные бизнес-отели, отвечающие высочайшим требованиям комфорта и удобства. Территория города Сочи выполнена в едином архитектурном стиле, отражающем индивидуальную архитектурную концепцию. Современный город Сочи – жемчужина не только Краснодарского края, но и всей России. Благодаря уникальной программе по приведению курорта к единому архитектурному облику, город Сочи имеет свой неповторимый внешний вид.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Уникальные здания Сочинского железнодорожного вокзала, являющееся архитектурными памятниками местного значения и Красной книги ЮНЕСКО и здание Сочинского морского порта, архитектурный памятник федерального значения, возглавляют ансамбль архитектурных достопримечательностей города Сочи, как исторических, так и современных. Перечень экскурсий и развлечений, доступный гостям города, широк и разнообразен: от парков и набережных, водопадов и озер, пеших горных маршрутов до развлекательных и экстремальных аттракционов, аквапарков, океанариумов, дельфинариев, скверов, парков культуры и отдыха и Олимпийского парка.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Гости и любители культурного отдыха могут посетить театры и концертные залы города Сочи, более десяти музеев города. Репертуар концертных площадок и экспозиции музеев соответствуют самым разнообразным интересам посетителей. Здесь можно побывать и в зале органной и камерной музыки и поп-концерте на открытой площадке, ознакомиться с историей спортивной славы России или посмотреть Дачу Сталина.<br>Круглогодичный активный отдых в Сочи привлекает сегодня все больше людей. После проведения в Сочи XXII Олимпийских зимних игр поселок Красная Поляна стал одним из самых знаменитых в мире горнолыжных курортов. Сейчас это комплекс из трех абсолютно новых, современных горнолыжных курортов, сочетающих горнолыжные трассы разного уровня сложности, а также современные подъемники, гостиничную инфраструктуру, а также развлечения и возможности проведения конгрессных мероприятий. Благодаря теплому субтропическому воздуху с юга и Большому Кавказскому хребту, который прикрывает курорт с севера, это место отличается исключительно мягким климатом и уникальным качеством снежного покрова, которому, пожалуй, нет равных во всем мире. Летом, окрестности Красной Поляны – настоящий рай из альпийских лугов и чистейших горных рек и озер, рай для любителей активных видов отдыха, таких как экскурсионные пешеходные подъемы на горные вершины, рафтинг и конные прогулки, уникальный парк экстремальных развлечений, два аквапарка на вершине 1500-2000 метров над уровнем моря, веревочные городки и тд.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Сочи – один из крупнейших в мире и в России круглогодичный бальнеологический курорт, всероссийская здравница, где сосредоточены лучшие санатории и пансионаты Черноморского побережья. Санаторно-курортное лечение, в сочетании с субтропическим климатом, теплым горным воздухом, неповторимым растительным миром и ласковым морем создают удивительный эффект оздоровления и восстановления организма. Благодаря оптимальному сочетанию воздействия на организм естественных лечебных факторов и использованию новейшей аппаратуры, в санаториях Сочи созданы уникальные условия для укрепления здоровья, избавления от хронических заболеваний, поднятия тонуса. Легендарная Мацеста, месторождение сероводородных источников славится своими целебными свойствами. Именно она сделала Сочи центром паломничества курортников, нуждающихся в исцеляющей силе природы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Не только море – главное природное богатство Сочи. На 50 километров от морского берега город уходит в предгорья и горы Главного Кавказского хребта. Вся его территория включена в состав Государственного природного национального парка и занимает часть Кавказского биосферного заповедника. Покинув побережье, можно легко подняться на высоту в несколько тысяч метров над уровнем моря.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Где поесть</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Сальмо от 80 до 500 руб.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Траттория Феттуччине от 300 до 7000 руб.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Мамино от 150 до 790 руб.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>CORKs от 500 до 1000 руб.</h1>\n<!-- /wp:heading -->', 'О Сочи', '', 'publish', 'closed', 'closed', '', '%d0%be-%d1%81%d0%be%d1%87%d0%b8', '', '', '2021-06-18 19:36:55', '2021-06-18 16:36:55', '', 0, 'http://olegdenisovichasotov.developingwordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2021-06-18 19:30:31', '2021-06-18 16:30:31', '<!-- wp:paragraph -->\n<p>Сочи</p>\n<!-- /wp:paragraph -->', 'О Сочи', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-06-18 19:30:31', '2021-06-18 16:30:31', '', 36, 'http://olegdenisovichasotov.developingwordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2021-06-18 19:30:49', '2021-06-18 16:30:49', '', 'Новости', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', '', '', '2021-06-18 19:30:49', '2021-06-18 16:30:49', '', 0, 'http://olegdenisovichasotov.developingwordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2021-06-18 19:30:49', '2021-06-18 16:30:49', '', 'Новости', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2021-06-18 19:30:49', '2021-06-18 16:30:49', '', 38, 'http://olegdenisovichasotov.developingwordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-06-18 19:31:00', '2021-06-18 16:31:00', '', 'Популярные развлечения', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%bf%d1%83%d0%bb%d1%8f%d1%80%d0%bd%d1%8b%d0%b5-%d1%80%d0%b0%d0%b7%d0%b2%d0%bb%d0%b5%d1%87%d0%b5%d0%bd%d0%b8%d1%8f', '', '', '2021-06-18 19:31:00', '2021-06-18 16:31:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2021-06-18 19:31:00', '2021-06-18 16:31:00', '', 'Популярные развлечения', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-06-18 19:31:00', '2021-06-18 16:31:00', '', 40, 'http://olegdenisovichasotov.developingwordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-06-18 19:32:48', '2021-06-18 16:32:48', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2021-06-18 19:32:48', '2021-06-18 16:32:48', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=42', 4, 'nav_menu_item', '', 0),
(43, 1, '2021-06-18 19:32:48', '2021-06-18 16:32:48', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2021-06-18 19:32:48', '2021-06-18 16:32:48', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2021-06-18 19:32:48', '2021-06-18 16:32:48', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2021-06-18 19:32:48', '2021-06-18 16:32:48', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=44', 2, 'nav_menu_item', '', 0),
(45, 1, '2021-06-18 19:34:25', '2021-06-18 16:34:25', '', 'эсто-садок', '', 'inherit', 'open', 'closed', '', '%d1%8d%d1%81%d1%82%d0%be-%d1%81%d0%b0%d0%b4%d0%be%d0%ba', '', '', '2021-06-18 19:34:25', '2021-06-18 16:34:25', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/эсто-садок.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2021-06-18 19:34:47', '2021-06-18 16:34:47', '{\n    \"sochi::preview\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/\\u044d\\u0441\\u0442\\u043e-\\u0441\\u0430\\u0434\\u043e\\u043a.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 16:34:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '542cda3a-bf76-47ba-868b-8c77b22a3177', '', '', '2021-06-18 19:34:47', '2021-06-18 16:34:47', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/542cda3a-bf76-47ba-868b-8c77b22a3177/', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(47, 1, '2021-06-18 19:36:55', '2021-06-18 16:36:55', '<!-- wp:paragraph -->\n<p>О Сочи</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Город Сочи – один из самых красивых, уникальных и протяженных городов России. На 145 км вдоль побережья Черного моря раскинулся этот удивительный по красоте город. Сегодня Сочи является самым крупным курортным городом России, важным транспортным узлом и крупным экономическим и культурным центром черноморского побережья России. Курорт Сочи – это не только популярный город с множеством отелей, гостиниц, пансионатов и санаториев. Это не просто море и горы. Уникальные хребты и перевалы, извилистые каньоны и чарующие водопады, древние пещеры и мистические дольмены. Только здесь, благодаря субтропическому климату можно увидеть самые северные в мире плантации чая, а также растущие в естественных условиях магнолии, эвкалипты и пальмы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Гости, приезжающие в Сочи, попадают в атмосферу оздоровления, пляжного отдыха и развлечений, спортивного духа, зрелищных мероприятий и экскурсий. Курорт Сочи знаменит своими рекреационными объектами и природными памятниками. 80% территории муниципального образования является особо охраняемой природной территорией. Протяженность благоустроенной пляжной зоны составляет почти 118 км, где каждый может выбрать гостиницу или отель по своему вкусу. Это и поражающие архитектурными изысками исторические гостиницы, построенные в советское время и реконструированные в наши дни, и строгие современные бизнес-отели, отвечающие высочайшим требованиям комфорта и удобства. Территория города Сочи выполнена в едином архитектурном стиле, отражающем индивидуальную архитектурную концепцию. Современный город Сочи – жемчужина не только Краснодарского края, но и всей России. Благодаря уникальной программе по приведению курорта к единому архитектурному облику, город Сочи имеет свой неповторимый внешний вид.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Уникальные здания Сочинского железнодорожного вокзала, являющееся архитектурными памятниками местного значения и Красной книги ЮНЕСКО и здание Сочинского морского порта, архитектурный памятник федерального значения, возглавляют ансамбль архитектурных достопримечательностей города Сочи, как исторических, так и современных. Перечень экскурсий и развлечений, доступный гостям города, широк и разнообразен: от парков и набережных, водопадов и озер, пеших горных маршрутов до развлекательных и экстремальных аттракционов, аквапарков, океанариумов, дельфинариев, скверов, парков культуры и отдыха и Олимпийского парка.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Гости и любители культурного отдыха могут посетить театры и концертные залы города Сочи, более десяти музеев города. Репертуар концертных площадок и экспозиции музеев соответствуют самым разнообразным интересам посетителей. Здесь можно побывать и в зале органной и камерной музыки и поп-концерте на открытой площадке, ознакомиться с историей спортивной славы России или посмотреть Дачу Сталина.<br>Круглогодичный активный отдых в Сочи привлекает сегодня все больше людей. После проведения в Сочи XXII Олимпийских зимних игр поселок Красная Поляна стал одним из самых знаменитых в мире горнолыжных курортов. Сейчас это комплекс из трех абсолютно новых, современных горнолыжных курортов, сочетающих горнолыжные трассы разного уровня сложности, а также современные подъемники, гостиничную инфраструктуру, а также развлечения и возможности проведения конгрессных мероприятий. Благодаря теплому субтропическому воздуху с юга и Большому Кавказскому хребту, который прикрывает курорт с севера, это место отличается исключительно мягким климатом и уникальным качеством снежного покрова, которому, пожалуй, нет равных во всем мире. Летом, окрестности Красной Поляны – настоящий рай из альпийских лугов и чистейших горных рек и озер, рай для любителей активных видов отдыха, таких как экскурсионные пешеходные подъемы на горные вершины, рафтинг и конные прогулки, уникальный парк экстремальных развлечений, два аквапарка на вершине 1500-2000 метров над уровнем моря, веревочные городки и тд.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Сочи – один из крупнейших в мире и в России круглогодичный бальнеологический курорт, всероссийская здравница, где сосредоточены лучшие санатории и пансионаты Черноморского побережья. Санаторно-курортное лечение, в сочетании с субтропическим климатом, теплым горным воздухом, неповторимым растительным миром и ласковым морем создают удивительный эффект оздоровления и восстановления организма. Благодаря оптимальному сочетанию воздействия на организм естественных лечебных факторов и использованию новейшей аппаратуры, в санаториях Сочи созданы уникальные условия для укрепления здоровья, избавления от хронических заболеваний, поднятия тонуса. Легендарная Мацеста, месторождение сероводородных источников славится своими целебными свойствами. Именно она сделала Сочи центром паломничества курортников, нуждающихся в исцеляющей силе природы.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Не только море – главное природное богатство Сочи. На 50 километров от морского берега город уходит в предгорья и горы Главного Кавказского хребта. Вся его территория включена в состав Государственного природного национального парка и занимает часть Кавказского биосферного заповедника. Покинув побережье, можно легко подняться на высоту в несколько тысяч метров над уровнем моря.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Где поесть</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Сальмо от 80 до 500 руб.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Траттория Феттуччине от 300 до 7000 руб.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>Мамино от 150 до 790 руб.</h1>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":1} -->\n<h1>CORKs от 500 до 1000 руб.</h1>\n<!-- /wp:heading -->', 'О Сочи', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-06-18 19:36:55', '2021-06-18 16:36:55', '', 36, 'http://olegdenisovichasotov.developingwordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2021-06-18 19:38:51', '2021-06-18 16:38:51', '<!-- wp:paragraph -->\n<p>В горах Сочи туристов предупредили о налипании мокрого снега и гололедице.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«Кабы не было зимы в городах и селах, никогда б не знали мы этих дней веселых…», -&nbsp;строчки из всеми любимой песни едва ли были посвящены горнолыжным развлечениям, однако вполне красочно подходят для описания зимнего сезона в Сочи. А пока курорты готовятся к предстоящему сезону, погода продолжает «намекать» на его скорое открытие.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Так, гостям курортов Красной Поляны необходимо взять во внимание предупреждение МЧС. В силу мокрого снега здесь имеется вероятность его налипания на проводах и деревьях. Кроме того, нужно быть максимально осторожными, поскольку на дорогах возможна гололедица.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«По прогнозам метеорологов, ночью и утром 25 ноября в предгорной и горной зонах Сочи ожидается местами налипание мокрого снега на проводах и деревьях», -&nbsp;говорится в сообщении администрации города-курорта.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Однако временное ухудшение погодных условий – вовсе не повод забыть о развлечениях. На всех горных курортах Сочи сейчас функционируют десятки кафе, ресторанов, развлекательных и торговых комплексов, где можно тепло и весело провести свой досуг.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Спасатели рекомендуют жителям и гостям Сочи соблюдать все необходимые меры предосторожности, временно отказаться от отдыха в горах.</p>\n<!-- /wp:paragraph -->', 'ТУРИСТОВ ПРЕДУПРЕДИЛИ О НЕПОГОДЕ', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-06-18 19:38:51', '2021-06-18 16:38:51', '', 23, 'http://olegdenisovichasotov.developingwordpress/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-06-18 19:39:57', '2021-06-18 16:39:57', '<!-- wp:paragraph -->\n<p>Накануне на курорте стартовал долгожданный старт голосования на имя котенка леопарда.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Традиционно имя новорожденному леопарду выберут пользователи социальных сетей. Вчера Сочинский национальный парк объявил о старте заключительного этапа конкура. Котенок родился минувшим летом в Центре восстановления леопарда на Кавказе ФГБУ «Сочинский национальный парк». Не так давно специалисты определили пол малыша: леопард оказался мужского пола.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«Мы принимали заявки с конкурсными именами больше двух месяцев. За это время в редакцию пресс-службы от вас поступило более 500 самых разнообразных имён — как мужских, так и женских. Жюри, в состав которого входят представители Сочинского национального парка, Центра восстановления леопарда на Кавказе и хоккейного клуба «Сочи», провело большую работу по сбору всех вариантов и их сортировке, чтобы выбрать пять лучших из них»,-&nbsp;рассказывают сотрудники нацпарка.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Так, лучшими вариантами для голосования стали: Лео, Архыз, Джамал, Алмаз и Симба. Именно они будут участвовать в народном конкурсе.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Голосование проходит в группе Сочинского национального парка в социальной сети «ВКонтакте» до 23 ноября.</p>\n<!-- /wp:paragraph -->', 'РОССИЯНЕ ВЫБЕРУТ ИМЯ ДЛЯ ЛЕОПАРДА, РОДИВШЕГОСЯ В СОЧИ', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2021-06-18 19:39:57', '2021-06-18 16:39:57', '', 15, 'http://olegdenisovichasotov.developingwordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2021-06-18 19:40:08', '2021-06-18 16:40:08', '', 'Logovo-11.verkhnee-2_20201012_144532_264', '', 'inherit', 'open', 'closed', '', 'logovo-11-verkhnee-2_20201012_144532_264', '', '', '2021-06-18 19:40:08', '2021-06-18 16:40:08', '', 15, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/Logovo-11.verkhnee-2_20201012_144532_264.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-06-18 19:40:12', '2021-06-18 16:40:12', '<!-- wp:paragraph -->\n<p>Накануне на курорте стартовал долгожданный старт голосования на имя котенка леопарда.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Традиционно имя новорожденному леопарду выберут пользователи социальных сетей. Вчера Сочинский национальный парк объявил о старте заключительного этапа конкура. Котенок родился минувшим летом в Центре восстановления леопарда на Кавказе ФГБУ «Сочинский национальный парк». Не так давно специалисты определили пол малыша: леопард оказался мужского пола.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«Мы принимали заявки с конкурсными именами больше двух месяцев. За это время в редакцию пресс-службы от вас поступило более 500 самых разнообразных имён — как мужских, так и женских. Жюри, в состав которого входят представители Сочинского национального парка, Центра восстановления леопарда на Кавказе и хоккейного клуба «Сочи», провело большую работу по сбору всех вариантов и их сортировке, чтобы выбрать пять лучших из них»,-&nbsp;рассказывают сотрудники нацпарка.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Так, лучшими вариантами для голосования стали: Лео, Архыз, Джамал, Алмаз и Симба. Именно они будут участвовать в народном конкурсе.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Голосование проходит в группе Сочинского национального парка в социальной сети «ВКонтакте» до 23 ноября.</p>\n<!-- /wp:paragraph -->', 'РОССИЯНЕ ВЫБЕРУТ ИМЯ ДЛЯ ЛЕОПАРДА, РОДИВШЕГОСЯ В СОЧИ', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-06-18 19:40:12', '2021-06-18 16:40:12', '', 15, 'http://olegdenisovichasotov.developingwordpress/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-06-18 19:41:14', '2021-06-18 16:41:14', '<!-- wp:paragraph -->\n<p>Для обеспечения безопасности в условиях пандемии власти примут меры для разведения потоков туристов, сообщил в понедельник, 23 ноября, губернатор Краснодарского края Вениамин Кондратьев.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"В горном кластере Сочи уже забронировано почти 90% номеров на период новогодних праздников, мы ожидаем около 300 тыс. человек. Наша первоочередная задача - обеспечить их безопасность в сегодняшних непростых условиях. На регулярной основе, без остановки работы, будет проводиться санитарная обработка кабинок канатных дорог. Также предусмотрена бесконтактная продажа электронных ски-пассов. В этом году будем максимально разводить потоки туристов и спортсменов\", - сказал глава региона.</p>\n<!-- /wp:paragraph -->', 'ГОРНЫЙ КЛАСТЕР СОЧИ НА НОВОГОДНИЕ ПРАЗДНИКИ ПРИМЕТ БОЛЬШЕ 300 ТЫСЯЧ ОТДЫХАЮЩИХ', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-06-18 19:41:14', '2021-06-18 16:41:14', '', 1, 'http://olegdenisovichasotov.developingwordpress/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-06-18 19:42:00', '2021-06-18 16:42:00', '<!-- wp:paragraph -->\n<p>Новые растения для парка должны пройти процедуру акклиматизации и карантина. Это нужно для предотвращения завоза вредителей, как было, например, в дни подготовки в к Олимпиаде. Когда в Сочи, вместе с пасадочным материалом, завезли несколько видов инвазивных вредителей, что «аукается» курорту до сих пор.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Новые растения для «Дендрария», растения проходят карантин в интродукционном отделе питомника. За ними наблюдают, проводят их первичное изучение на агрессивность и отклик на погодные условия. Теплолюбивые растения проходят первичную закалку.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«В текущем году многие растения парка, которые находились на испытаниях, погибли, не выдержав сначала рекордно низкие температуры (–7,2°C), а после — летнюю засуху» - рассказала старший научный сотрудник ФГБУ «Сочинский национальный парк»Лидия Гарбузова.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«Сейчас мы готовимся к очередным посадкам и обновлению коллекции. Ведётся инвентаризация, назначаются растения, которые будут доращиваться в питомнике и те, что пополнят коллекцию парка в новом сезоне» — рассказывает дендроголог.</p>\n<!-- /wp:paragraph -->', 'У РАСТЕНИЙ СВОЙ КАРАНТИН: В «ДЕНДРАРИИ» СОЧИ ОБНОВЛЯЮТ КОЛЛЕКЦИЮ', '', 'publish', 'open', 'open', '', '%d1%83-%d1%80%d0%b0%d1%81%d1%82%d0%b5%d0%bd%d0%b8%d0%b9-%d1%81%d0%b2%d0%be%d0%b9-%d0%ba%d0%b0%d1%80%d0%b0%d0%bd%d1%82%d0%b8%d0%bd-%d0%b2-%d0%b4%d0%b5%d0%bd%d0%b4%d1%80%d0%b0%d1%80%d0%b8%d0%b8', '', '', '2021-06-18 19:42:00', '2021-06-18 16:42:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=53', 0, 'post', '', 0),
(54, 1, '2021-06-18 19:41:54', '2021-06-18 16:41:54', '', 'IMG_0308', '', 'inherit', 'open', 'closed', '', 'img_0308', '', '', '2021-06-18 19:41:54', '2021-06-18 16:41:54', '', 53, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/IMG_0308.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-06-18 19:42:00', '2021-06-18 16:42:00', '<!-- wp:paragraph -->\n<p>Новые растения для парка должны пройти процедуру акклиматизации и карантина. Это нужно для предотвращения завоза вредителей, как было, например, в дни подготовки в к Олимпиаде. Когда в Сочи, вместе с пасадочным материалом, завезли несколько видов инвазивных вредителей, что «аукается» курорту до сих пор.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Новые растения для «Дендрария», растения проходят карантин в интродукционном отделе питомника. За ними наблюдают, проводят их первичное изучение на агрессивность и отклик на погодные условия. Теплолюбивые растения проходят первичную закалку.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«В текущем году многие растения парка, которые находились на испытаниях, погибли, не выдержав сначала рекордно низкие температуры (–7,2°C), а после — летнюю засуху» - рассказала старший научный сотрудник ФГБУ «Сочинский национальный парк»Лидия Гарбузова.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>«Сейчас мы готовимся к очередным посадкам и обновлению коллекции. Ведётся инвентаризация, назначаются растения, которые будут доращиваться в питомнике и те, что пополнят коллекцию парка в новом сезоне» — рассказывает дендроголог.</p>\n<!-- /wp:paragraph -->', 'У РАСТЕНИЙ СВОЙ КАРАНТИН: В «ДЕНДРАРИИ» СОЧИ ОБНОВЛЯЮТ КОЛЛЕКЦИЮ', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2021-06-18 19:42:00', '2021-06-18 16:42:00', '', 53, 'http://olegdenisovichasotov.developingwordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-06-18 19:50:38', '0000-00-00 00:00:00', '{\n    \"sochi::logo_text\": {\n        \"value\": \"\\u0413\\u043e\\u0440\\u043e\\u0434\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 16:50:38\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ac14b0ab-119d-49dd-9e3a-d7eac2561c2b', '', '', '2021-06-18 19:50:38', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2021-06-18 19:53:48', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-18 19:53:48', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=57', 0, 'post', '', 0),
(58, 1, '2021-06-18 20:02:34', '2021-06-18 17:02:34', '{\n    \"sochi::logo_text\": {\n        \"value\": \"\\u0413\\u043e\\u0440\\u043e\\u0434\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 17:02:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '570ce7b9-a352-457b-9cb5-cb6498931b59', '', '', '2021-06-18 20:02:34', '2021-06-18 17:02:34', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/570ce7b9-a352-457b-9cb5-cb6498931b59/', 0, 'customize_changeset', '', 0),
(59, 1, '2021-06-18 20:51:37', '2021-06-18 17:51:37', '', '7eb15998e77042f58314ad13a022', '', 'inherit', 'open', 'closed', '', '7eb15998e77042f58314ad13a022', '', '', '2021-06-18 20:51:37', '2021-06-18 17:51:37', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/7eb15998e77042f58314ad13a022.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2021-06-18 20:51:54', '2021-06-18 17:51:54', '{\n    \"sochi::img1_dev\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/7eb15998e77042f58314ad13a022.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 17:51:54\"\n    },\n    \"sochi::img2_dev\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/7eb15998e77042f58314ad13a022.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 17:51:54\"\n    },\n    \"sochi::img3_dev\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/7eb15998e77042f58314ad13a022.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 17:51:54\"\n    },\n    \"sochi::img4_dev\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/7eb15998e77042f58314ad13a022.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 17:51:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a79b29a9-a544-40c9-97a7-14262a014ba3', '', '', '2021-06-18 20:51:54', '2021-06-18 17:51:54', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/a79b29a9-a544-40c9-97a7-14262a014ba3/', 0, 'customize_changeset', '', 0),
(61, 1, '2021-06-18 20:52:09', '2021-06-18 17:52:09', '', 'sea-view-sunsets', '', 'inherit', 'open', 'closed', '', 'sea-view-sunsets', '', '', '2021-06-18 20:52:09', '2021-06-18 17:52:09', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/sea-view-sunsets.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-06-18 20:52:27', '2021-06-18 17:52:27', '{\n    \"sochi::img1_dev_g\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/sea-view-sunsets.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 17:52:27\"\n    },\n    \"sochi::img2_dev_g\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/sea-view-sunsets.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 17:52:27\"\n    },\n    \"sochi::img3_dev_g\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/sea-view-sunsets.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 17:52:27\"\n    },\n    \"sochi::img4_dev_g\": {\n        \"value\": \"http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/sea-view-sunsets.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 17:52:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '72acfe96-f2f7-4d53-9603-f4e0568b5158', '', '', '2021-06-18 20:52:27', '2021-06-18 17:52:27', '', 0, 'http://olegdenisovichasotov.developingwordpress/2021/06/18/72acfe96-f2f7-4d53-9603-f4e0568b5158/', 0, 'customize_changeset', '', 0),
(63, 1, '2021-06-18 21:11:47', '2021-06-18 18:11:47', '', 'gerb_1', '', 'inherit', 'open', 'closed', '', 'gerb_1', '', '', '2021-06-18 21:11:47', '2021-06-18 18:11:47', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/gerb_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2021-06-18 21:11:57', '2021-06-18 18:11:57', 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/cropped-gerb_1.jpg', 'cropped-gerb_1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-gerb_1-jpg', '', '', '2021-06-18 21:11:57', '2021-06-18 18:11:57', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/cropped-gerb_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2021-06-18 21:12:18', '0000-00-00 00:00:00', '{\n    \"sochi::custom_logo\": {\n        \"value\": 64,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 18:12:18\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '83a33d65-df21-4e02-b8f1-042f72016c8c', '', '', '2021-06-18 21:12:18', '0000-00-00 00:00:00', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=65', 0, 'customize_changeset', '', 0),
(66, 1, '2021-06-18 21:18:41', '2021-06-18 18:18:41', 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/cropped-gerb_1-1.jpg', 'cropped-gerb_1-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-gerb_1-1-jpg', '', '', '2021-06-18 21:18:41', '2021-06-18 18:18:41', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/cropped-gerb_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2021-06-18 21:20:15', '2021-06-18 18:20:15', '{\n    \"sochi::custom_logo\": {\n        \"value\": 69,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-18 18:20:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4d9a326-0c74-4218-bbe1-3b57a4b425e5', '', '', '2021-06-18 21:20:15', '2021-06-18 18:20:15', '', 0, 'http://olegdenisovichasotov.developingwordpress/?p=67', 0, 'customize_changeset', '', 0),
(68, 1, '2021-06-18 21:19:57', '2021-06-18 18:19:57', '', 'gerb_1', '', 'inherit', 'open', 'closed', '', 'gerb_1-2', '', '', '2021-06-18 21:19:57', '2021-06-18 18:19:57', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/gerb_1.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2021-06-18 21:20:01', '2021-06-18 18:20:01', 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/cropped-gerb_1.png', 'cropped-gerb_1.png', '', 'inherit', 'open', 'closed', '', 'cropped-gerb_1-png', '', '', '2021-06-18 21:20:01', '2021-06-18 18:20:01', '', 0, 'http://olegdenisovichasotov.developingwordpress/wp-content/uploads/2021/06/cropped-gerb_1.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(15, 1, 0),
(23, 1, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0),
(53, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
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
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1624028230'),
(25, 1, 'session_tokens', 'a:1:{s:64:\"3324049953b774091166a286de67eaca352303ef714011b858c7a8c73a2a1632\";a:4:{s:10:\"expiration\";i:1624453325;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36\";s:5:\"login\";i:1624280525;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BS3X/8A9ey6tvlIFP4bCJDqSp0Ou9y/', 'admin', 'pavel1999bel@gmail.com', 'http://olegdenisovichasotov.developingwordpress', '2021-06-17 12:25:42', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
