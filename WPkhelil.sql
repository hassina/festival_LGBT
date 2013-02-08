-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Lun 21 Janvier 2013 à 16:53
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPkhelil`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2012-11-26 15:14:35', '2012-11-26 15:14:35', 'Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivalcommentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festivalcommentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivalcomments`
--

CREATE TABLE IF NOT EXISTS `wp_festivalcomments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festivalcomments`
--

INSERT INTO `wp_festivalcomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-07 15:42:40', '2013-01-07 15:42:40', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivallinks`
--

CREATE TABLE IF NOT EXISTS `wp_festivallinks` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivaloptions`
--

CREATE TABLE IF NOT EXISTS `wp_festivaloptions` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=175 ;

--
-- Contenu de la table `wp_festivaloptions`
--

INSERT INTO `wp_festivaloptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~hkhelil/festival_cinema', 'yes'),
(2, 'blogname', 'Festival LGBT', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'hasinakh@yahoo.fr', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/~hkhelil/festival_cinema', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'twentytwelve', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festivaluser_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1358783608;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1358826177;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1358849119;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1358783005;}', 'yes'),
(102, '_transient_random_seed', '740acdf46469501ea45d5d04702614fb', 'yes'),
(103, 'auth_key', '1eH+^v@x+BP{a[w^F[d&o&sq Da7gy5H}.Sj<=$tQ/JRn8iRqh:n3yp/>M~~H`8~', 'yes'),
(104, 'auth_salt', 'A2yV8dhyZ6nEZe]j]C00}zQq8pAC:!X)PDh/n[C?Na? yKoROW)Q/4c^YzTGL&#d', 'yes'),
(105, 'logged_in_key', 'fQeg-zxsjYjZ7)XJY8x#$;d/S`$,P`ANU8@$_?T^5/INDGo<qyz;0VJU>Uhn+mVM', 'yes'),
(106, 'logged_in_salt', 'Y|@5sH;FTI<y05REU/RAbW),S^:SA03$/e7(j`t+HoaCtDx)I0Jbs.D5wgjP~rxY', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358783035;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358783066;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:41:"http://localhost/~hkhelil/festival_cinema";s:4:"link";s:117:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~hkhelil/festival_cinema/";s:3:"url";s:150:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~hkhelil/festival_cinema/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', '`]PZZs$PZ/75=dVEMOdkm &ni@)m|2EOv4(UouCN%vI7d%CCZ5WNG]~Oo3DDjAU&', 'yes'),
(113, 'nonce_salt', 'PkhgnN!9B^_LZRxEWj,dC{s_WLc7z |2IO%*+jF_H[R9ldxs5|K]1Li.MQ9>5/mn', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(152, 'category_children', 'a:0:{}', 'yes'),
(154, 'theme_mods_twentytwelve', 'a:1:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}}', 'yes'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(159, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1358822690', 'no'),
(160, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: couldn''t connect to host</p></div>', 'no'),
(161, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1358822692', 'no'),
(162, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(163, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1358822692', 'no'),
(164, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(165, '_transient_timeout_plugin_slugs', '1358865903', 'no'),
(166, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(167, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1358822704', 'no'),
(168, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(170, '_site_transient_timeout_wporg_theme_feature_list', '1358791207', 'yes'),
(171, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(173, '_site_transient_timeout_theme_roots', '1358784866', 'yes'),
(174, '_site_transient_theme_roots', 'a:3:{s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivalpostmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festivalpostmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Contenu de la table `wp_festivalpostmeta`
--

INSERT INTO `wp_festivalpostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1358781972:1'),
(4, 8, '_menu_item_type', 'custom'),
(5, 8, '_menu_item_menu_item_parent', '0'),
(6, 8, '_menu_item_object_id', '8'),
(7, 8, '_menu_item_object', 'custom'),
(8, 8, '_menu_item_target', ''),
(9, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(10, 8, '_menu_item_xfn', ''),
(11, 8, '_menu_item_url', 'http://localhost/~hkhelil/festival_cinema/'),
(12, 8, '_menu_item_orphaned', '1358245336'),
(13, 9, '_menu_item_type', 'post_type'),
(14, 9, '_menu_item_menu_item_parent', '0'),
(15, 9, '_menu_item_object_id', '2'),
(16, 9, '_menu_item_object', 'page'),
(17, 9, '_menu_item_target', ''),
(18, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 9, '_menu_item_xfn', ''),
(20, 9, '_menu_item_url', ''),
(21, 9, '_menu_item_orphaned', '1358245514'),
(24, 13, '_edit_last', '1'),
(25, 13, '_edit_lock', '1358781323:1'),
(26, 14, '_edit_last', '1'),
(27, 14, '_edit_lock', '1358780509:1'),
(28, 14, '_wp_page_template', 'default'),
(29, 16, '_edit_last', '1'),
(30, 16, '_edit_lock', '1358780805:1'),
(31, 17, '_edit_last', '1'),
(32, 17, '_edit_lock', '1358780674:1'),
(33, 17, '_wp_page_template', 'default'),
(34, 20, '_edit_last', '1'),
(35, 20, '_wp_page_template', 'default'),
(36, 20, '_edit_lock', '1358780729:1'),
(37, 16, '_wp_page_template', 'default'),
(38, 13, '_wp_page_template', 'default'),
(39, 20, '_wp_trash_meta_status', 'publish'),
(40, 20, '_wp_trash_meta_time', '1358780967'),
(41, 24, '_menu_item_type', 'post_type'),
(42, 24, '_menu_item_menu_item_parent', '0'),
(43, 24, '_menu_item_object_id', '13'),
(44, 24, '_menu_item_object', 'page'),
(45, 24, '_menu_item_target', ''),
(46, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 24, '_menu_item_xfn', ''),
(48, 24, '_menu_item_url', ''),
(50, 25, '_menu_item_type', 'taxonomy'),
(51, 25, '_menu_item_menu_item_parent', '0'),
(52, 25, '_menu_item_object_id', '2'),
(53, 25, '_menu_item_object', 'category'),
(54, 25, '_menu_item_target', ''),
(55, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 25, '_menu_item_xfn', ''),
(57, 25, '_menu_item_url', ''),
(59, 26, '_menu_item_type', 'post_type'),
(60, 26, '_menu_item_menu_item_parent', '0'),
(61, 26, '_menu_item_object_id', '14'),
(62, 26, '_menu_item_object', 'page'),
(63, 26, '_menu_item_target', ''),
(64, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 26, '_menu_item_xfn', ''),
(66, 26, '_menu_item_url', ''),
(68, 27, '_menu_item_type', 'post_type'),
(69, 27, '_menu_item_menu_item_parent', '0'),
(70, 27, '_menu_item_object_id', '16'),
(71, 27, '_menu_item_object', 'page'),
(72, 27, '_menu_item_target', ''),
(73, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 27, '_menu_item_xfn', ''),
(75, 27, '_menu_item_url', ''),
(77, 28, '_menu_item_type', 'post_type'),
(78, 28, '_menu_item_menu_item_parent', '0'),
(79, 28, '_menu_item_object_id', '17'),
(80, 28, '_menu_item_object', 'page'),
(81, 28, '_menu_item_target', ''),
(82, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 28, '_menu_item_xfn', ''),
(84, 28, '_menu_item_url', ''),
(86, 1, '_wp_trash_meta_status', 'publish'),
(87, 1, '_wp_trash_meta_time', '1358781119'),
(88, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(89, 2, '_wp_trash_meta_status', 'publish'),
(90, 2, '_wp_trash_meta_time', '1358781726'),
(91, 32, '_wp_attached_file', '2013/01/37_it_s_still_elementary.jpg'),
(92, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:228;s:4:"file";s:36:"2013/01/37_it_s_still_elementary.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivalposts`
--

CREATE TABLE IF NOT EXISTS `wp_festivalposts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `wp_festivalposts`
--

INSERT INTO `wp_festivalposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-07 15:42:40', '2013-01-07 15:42:40', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-21 16:11:59', '2013-01-21 15:11:59', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-07 15:42:40', '2013-01-07 15:42:40', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~hkhelil/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2013-01-21 16:22:06', '2013-01-21 15:22:06', '', 0, 'http://localhost/~hkhelil/festival_cinema/?page_id=2', 0, 'page', '', 0),
(4, 1, '2013-01-21 15:47:56', '2013-01-21 14:47:56', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'open', 'open', '', 'edito', '', '', '2013-01-21 15:47:56', '2013-01-21 14:47:56', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=4', 0, 'post', '', 0),
(5, 1, '2013-01-15 11:12:20', '2013-01-15 10:12:20', '<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes.</p>\n<p style="text-align: justify;">Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous  : 5  séances inédites au cinéma Les Carmes à Orléans.</p>\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en  2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une</p>\n<p style="text-align: justify;">savoureuse comédie britannique qui clôturera cette édition.</p>\n<p style="text-align: justify;">Bon festival !</p>\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2013-01-15 11:12:20', '2013-01-15 10:12:20', '', 4, 'http://localhost/~hkhelil/festival_cinema/?p=5', 0, 'revision', '', 0),
(6, 1, '2013-01-15 11:13:20', '2013-01-15 10:13:20', '<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes.</p>\n<p style="text-align: justify;">Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous  : 5  séances inédites au cinéma Les Carmes à Orléans.</p>\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en  2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.</p>\n<p style="text-align: justify;">Bon festival !</p>\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'inherit', 'open', 'open', '', '4-revision-2', '', '', '2013-01-15 11:13:20', '2013-01-15 10:13:20', '', 4, 'http://localhost/~hkhelil/festival_cinema/?p=6', 0, 'revision', '', 0),
(7, 1, '2013-01-15 11:14:52', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-15 11:14:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=7', 0, 'post', '', 0),
(8, 1, '2013-01-15 11:22:15', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'open', 'open', '', '', '', '', '2013-01-15 11:22:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2013-01-15 11:25:13', '0000-00-00 00:00:00', '', 'Page d’exemple', '', 'draft', 'open', 'open', '', '', '', '', '2013-01-15 11:25:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2013-01-15 11:13:38', '2013-01-15 10:13:38', '<p style="text-align: justify;">Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes.</p>\r\n<p style="text-align: justify;">Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous  : 5  séances inédites au cinéma Les Carmes à Orléans.</p>\r\n<p style="text-align: justify;">En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.</p>\r\n<p style="text-align: justify;">Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en  2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.</p>\r\n<p style="text-align: justify;">Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.</p>\r\n<p style="text-align: justify;">Bon festival !</p>\r\n<p style="text-align: justify;">Christel Guillard, coordinatrice générale.</p>', 'Edito', '', 'inherit', 'open', 'open', '', '4-revision-3', '', '', '2013-01-15 11:13:38', '2013-01-15 10:13:38', '', 4, 'http://localhost/~hkhelil/festival_cinema/?p=10', 0, 'revision', '', 0),
(11, 1, '2013-01-21 16:24:31', '2013-01-21 15:24:31', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '4-autosave', '', '', '2013-01-21 16:24:31', '2013-01-21 15:24:31', '', 4, 'http://localhost/~hkhelil/festival_cinema/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-01-21 15:59:17', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-21 15:59:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=12', 0, 'post', '', 0),
(13, 1, '2013-01-21 16:08:49', '2013-01-21 15:08:49', '', 'Edito', '', 'publish', 'open', 'open', '', 'edito-2', '', '', '2013-01-21 16:08:49', '2013-01-21 15:08:49', '', 0, 'http://localhost/~hkhelil/festival_cinema/?page_id=13', 0, 'page', '', 0),
(14, 1, '2013-01-21 16:02:29', '2013-01-21 15:02:29', '', 'Infos-pratiques', '', 'publish', 'open', 'open', '', 'infos-pratiques', '', '', '2013-01-21 16:03:42', '2013-01-21 15:03:42', '', 0, 'http://localhost/~hkhelil/festival_cinema/?page_id=14', 0, 'page', '', 0),
(15, 1, '2013-01-21 16:02:21', '2013-01-21 15:02:21', '', 'infos-pratiques', '', 'inherit', 'open', 'open', '', '14-revision', '', '', '2013-01-21 16:02:21', '2013-01-21 15:02:21', '', 14, 'http://localhost/~hkhelil/festival_cinema/?p=15', 0, 'revision', '', 0),
(16, 1, '2013-01-21 16:08:35', '2013-01-21 15:08:35', '', 'Partenaires', '', 'publish', 'open', 'open', '', 'partenaires', '', '', '2013-01-21 16:08:35', '2013-01-21 15:08:35', '', 0, 'http://localhost/~hkhelil/festival_cinema/?page_id=16', 0, 'page', '', 0),
(17, 1, '2013-01-21 16:04:46', '2013-01-21 15:04:46', '', 'Remerciements', '', 'publish', 'open', 'open', '', 'remerciements', '', '', '2013-01-21 16:04:46', '2013-01-21 15:04:46', '', 0, 'http://localhost/~hkhelil/festival_cinema/?page_id=17', 0, 'page', '', 0),
(18, 1, '2013-01-21 16:02:29', '2013-01-21 15:02:29', '', 'infos-pratiques', '', 'inherit', 'open', 'open', '', '14-revision-2', '', '', '2013-01-21 16:02:29', '2013-01-21 15:02:29', '', 14, 'http://localhost/~hkhelil/festival_cinema/?p=18', 0, 'revision', '', 0),
(19, 1, '2013-01-21 16:03:27', '2013-01-21 15:03:27', '', 'remerciements', '', 'inherit', 'open', 'open', '', '17-revision', '', '', '2013-01-21 16:03:27', '2013-01-21 15:03:27', '', 17, 'http://localhost/~hkhelil/festival_cinema/?p=19', 0, 'revision', '', 0),
(20, 1, '2013-01-21 16:07:13', '2013-01-21 15:07:13', '', 'Edito', '', 'trash', 'open', 'open', '', 'edito', '', '', '2013-01-21 16:09:27', '2013-01-21 15:09:27', '', 0, 'http://localhost/~hkhelil/festival_cinema/?page_id=20', 0, 'page', '', 0),
(21, 1, '2013-01-21 16:02:45', '2013-01-21 15:02:45', '', 'Partenaires', '', 'inherit', 'open', 'open', '', '16-revision', '', '', '2013-01-21 16:02:45', '2013-01-21 15:02:45', '', 16, 'http://localhost/~hkhelil/festival_cinema/?p=21', 0, 'revision', '', 0),
(22, 1, '2013-01-21 16:01:52', '2013-01-21 15:01:52', '', 'Edito', '', 'inherit', 'open', 'open', '', '13-revision', '', '', '2013-01-21 16:01:52', '2013-01-21 15:01:52', '', 13, 'http://localhost/~hkhelil/festival_cinema/?p=22', 0, 'revision', '', 0),
(23, 1, '2013-01-21 16:07:13', '2013-01-21 15:07:13', '', 'Edito', '', 'inherit', 'open', 'open', '', '20-revision', '', '', '2013-01-21 16:07:13', '2013-01-21 15:07:13', '', 20, 'http://localhost/~hkhelil/festival_cinema/?p=23', 0, 'revision', '', 0),
(24, 1, '2013-01-21 16:10:54', '2013-01-21 15:10:54', ' ', '', '', 'publish', 'open', 'open', '', '24', '', '', '2013-01-21 16:10:54', '2013-01-21 15:10:54', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2013-01-21 16:10:55', '2013-01-21 15:10:55', ' ', '', '', 'publish', 'open', 'open', '', '25', '', '', '2013-01-21 16:10:55', '2013-01-21 15:10:55', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2013-01-21 16:10:56', '2013-01-21 15:10:56', ' ', '', '', 'publish', 'open', 'open', '', '26', '', '', '2013-01-21 16:10:56', '2013-01-21 15:10:56', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2013-01-21 16:10:56', '2013-01-21 15:10:56', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2013-01-21 16:10:56', '2013-01-21 15:10:56', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2013-01-21 16:10:57', '2013-01-21 15:10:57', ' ', '', '', 'publish', 'open', 'open', '', '28', '', '', '2013-01-21 16:10:57', '2013-01-21 15:10:57', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=28', 5, 'nav_menu_item', '', 0),
(29, 1, '2013-01-07 15:42:40', '2013-01-07 15:42:40', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2013-01-07 15:42:40', '2013-01-07 15:42:40', '', 1, 'http://localhost/~hkhelil/festival_cinema/?p=29', 0, 'revision', '', 0),
(30, 1, '2013-01-07 15:42:40', '2013-01-07 15:42:40', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~hkhelil/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-01-07 15:42:40', '2013-01-07 15:42:40', '', 2, 'http://localhost/~hkhelil/festival_cinema/?p=30', 0, 'revision', '', 0),
(31, 1, '2013-01-21 16:29:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2013-01-21 16:29:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/~hkhelil/festival_cinema/?p=31', 0, 'post', '', 0),
(32, 1, '2013-01-21 16:31:31', '2013-01-21 15:31:31', '', '37_it_s_still_elementary', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary', '', '', '2013-01-21 16:31:31', '2013-01-21 15:31:31', '', 31, 'http://localhost/~hkhelil/festival_cinema/wp-content/uploads/2013/01/37_it_s_still_elementary.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivalterms`
--

CREATE TABLE IF NOT EXISTS `wp_festivalterms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festivalterms`
--

INSERT INTO `wp_festivalterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'films', 'films', 0),
(3, 'courts_métrages', 'courts_metrages', 0),
(4, 'navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivalterm_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festivalterm_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festivalterm_relationships`
--

INSERT INTO `wp_festivalterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(24, 4, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0),
(28, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivalterm_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festivalterm_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festivalterm_taxonomy`
--

INSERT INTO `wp_festivalterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivalusermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festivalusermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `wp_festivalusermeta`
--

INSERT INTO `wp_festivalusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festivalcapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festivaluser_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festivaldashboard_quick_press_last_post_id', '7'),
(15, 1, 'wp_festivaluser-settings', 'hidetb=1&libraryContent=browse'),
(16, 1, 'wp_festivaluser-settings-time', '1358781598'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'closedpostboxes_nav-menus', 'a:1:{i:0;s:16:"add-custom-links";}'),
(20, 1, 'nav_menu_recently_edited', '4'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:8:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";i:7;s:12:"revisionsdiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festivalusers`
--

CREATE TABLE IF NOT EXISTS `wp_festivalusers` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festivalusers`
--

INSERT INTO `wp_festivalusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BBh0aNt/a1MG09DX6TACKAMpoHTyUR.', 'admin', 'hasinakh@yahoo.fr', '', '2013-01-07 15:42:38', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wordpress.org/news/', 'WordPress Blog', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/news/feed/'),
(3, 'http://wordpress.org/support/', 'Support Forums', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://wordpress.org/support/forum/requests-and-feedback', 'Feedback', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~hkhelil/wordpress', 'yes'),
(2, 'blogname', '', 'yes'),
(3, 'blogdescription', 'Just another WordPress site', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'hassinakh@yahoo.fr', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:2:{i:0;s:30:"lightbox-plus/lightboxplus.php";i:1;s:32:"xml-sitemap-feed/xml-sitemap.php";}', 'yes'),
(37, 'home', 'http://localhost/~hkhelil/wordpress', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '0', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'wordpress-bootstrap', 'yes'),
(46, 'stylesheet', 'wordpress-bootstrap', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21707', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '1', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21707', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"sidebar2";a:0:{}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:3:{i:1357615724;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1357659157;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.4.2";s:12:"last_checked";i:1357572785;}', 'yes'),
(107, '_transient_random_seed', '354ae3ae8493fc7f9d6c223d5a3398fe', 'yes'),
(108, 'auth_key', '~e-4UrM@NNPQtLKwFQ4^F4;y@1;iwJCc){xP{!$<ALm1Zv(I+-h>k|IuJ|rad1}H', 'yes'),
(109, 'auth_salt', 'eOoNd~T,J~j,FO=z~Vkn* IeFK`pK>Kk|R^Tu;^b5-anZGEp|aovcMG@a!v<Ynr&', 'yes'),
(110, 'logged_in_key', 's`mL-C=B;V>?Ncq^*LZwVq#P9fl70y323# ?}jZ9sf~ru6i7{Ncq`l&w~~@wAXh^', 'yes'),
(111, 'logged_in_salt', '7|G!hdWF4|(]=Xn=vJNWM}e_=JVxUxf!u<;Sfcu|UC!*;Ad;OwRW,PeUbawT@ @j', 'yes'),
(112, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1357572815;}', 'yes'),
(115, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1357572845;}', 'yes'),
(116, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:35:"http://localhost/~hkhelil/wordpress";s:4:"link";s:111:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~hkhelil/wordpress/";s:3:"url";s:144:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~hkhelil/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(117, 'nonce_key', 'Z,GPtxq%bzPW|F&c&HXd6TlPGtKm*Po |n!u>#74H<%@N@n9sK$9G,C8!|<n$#;x', 'yes'),
(118, 'nonce_salt', 'ZTT(Ak<K2NTf~E=H (0t|0k~51jx#esxUB*(mJy%jYf3+WGfs.7C/.fJ~(EY#}@+', 'yes'),
(119, 'can_compress_scripts', '0', 'yes'),
(143, 'category_children', 'a:2:{i:7;a:1:{i:0;i:9;}i:9;a:1:{i:0;i:10;}}', 'yes'),
(146, 'recently_activated', 'a:0:{}', 'yes'),
(153, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1354589985', 'no'),
(154, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>RSS Error</strong>: WP HTTP Error: connect() timed out!</p>', 'no'),
(155, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1354589985', 'no'),
(156, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: connect() timed out!</p></div>', 'no'),
(157, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1354589986', 'no'),
(158, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: connect() timed out!</p></div>', 'no'),
(159, '_transient_timeout_plugin_slugs', '1354634530', 'no'),
(160, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:30:"lightbox-plus/lightboxplus.php";i:3;s:32:"xml-sitemap-feed/xml-sitemap.php";}', 'no'),
(161, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1354589996', 'no'),
(162, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(165, '_site_transient_timeout_wporg_theme_feature_list', '1354558848', 'yes'),
(166, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(167, 'theme_mods_twentyeleven', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1354547781;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(168, 'current_theme', 'wp-bootstrap', 'yes'),
(169, 'theme_mods_wordpress-bootstrap', 'a:1:{i:0;b:0;}', 'yes'),
(170, 'theme_switched', '', 'yes'),
(171, 'optionsframework', 'a:2:{s:2:"id";s:11:"wpbootstrap";s:12:"knownoptions";a:1:{i:0;s:11:"wpbootstrap";}}', 'yes'),
(172, 'wpbootstrap', 'a:22:{s:18:"heading_typography";a:3:{s:4:"face";s:7:"Default";s:5:"style";s:6:"Normal";s:5:"color";s:0:"";}s:20:"main_body_typography";a:3:{s:4:"face";s:7:"Default";s:5:"style";s:6:"Normal";s:5:"color";s:0:"";}s:10:"link_color";s:0:"";s:16:"link_hover_color";s:0:"";s:17:"link_active_color";s:0:"";s:12:"nav_position";s:0:"";s:16:"top_nav_bg_color";s:0:"";s:19:"showhidden_gradient";s:1:"0";s:29:"top_nav_bottom_gradient_color";s:0:"";s:18:"top_nav_link_color";s:0:"";s:24:"top_nav_link_hover_color";s:0:"";s:21:"top_nav_dropdown_item";s:0:"";s:25:"top_nav_dropdown_hover_bg";s:0:"";s:10:"search_bar";s:1:"0";s:17:"showhidden_themes";s:1:"0";s:10:"wpbs_theme";s:7:"default";s:24:"showhidden_slideroptions";s:1:"0";s:14:"slider_options";s:1:"5";s:18:"hero_unit_bg_color";s:0:"";s:25:"suppress_comments_message";s:1:"1";s:9:"blog_hero";s:1:"1";s:8:"wpbs_css";s:0:"";}', 'yes'),
(173, 'xml-sitemap-feed-version', '3.9.2', 'yes'),
(174, 'lightboxplus_options', 'a:71:{s:18:"lightboxplus_style";s:8:"shadowed";s:16:"use_custom_style";s:1:"0";s:18:"lightboxplus_multi";s:1:"0";s:11:"disable_css";s:1:"0";s:12:"use_php_four";s:1:"0";s:10:"use_inline";s:1:"0";s:10:"inline_num";s:1:"1";s:10:"transition";s:7:"elastic";s:5:"speed";s:3:"350";s:5:"width";s:5:"false";s:6:"height";s:5:"false";s:11:"inner_width";s:5:"false";s:12:"inner_height";s:5:"false";s:13:"initial_width";s:3:"300";s:14:"initial_height";s:3:"100";s:9:"max_width";s:5:"false";s:10:"max_height";s:5:"false";s:6:"resize";s:1:"1";s:7:"opacity";s:3:"0.8";s:10:"preloading";s:1:"1";s:11:"label_image";s:5:"Image";s:8:"label_of";s:2:"of";s:8:"previous";s:8:"previous";s:4:"next";s:4:"next";s:5:"close";s:5:"close";s:13:"overlay_close";s:1:"1";s:9:"slideshow";s:1:"0";s:14:"slideshow_auto";s:1:"0";s:15:"slideshow_speed";s:4:"2500";s:15:"slideshow_start";s:5:"start";s:14:"slideshow_stop";s:4:"stop";s:17:"use_caption_title";s:1:"0";s:20:"gallery_lightboxplus";s:1:"0";s:18:"multiple_galleries";s:1:"0";s:16:"use_class_method";s:1:"0";s:10:"class_name";s:9:"cboxModal";s:16:"no_auto_lightbox";s:1:"0";s:10:"text_links";s:1:"0";s:16:"no_display_title";s:1:"0";s:14:"transition_sec";s:7:"elastic";s:9:"speed_sec";s:3:"350";s:9:"width_sec";s:5:"false";s:10:"height_sec";s:5:"false";s:15:"inner_width_sec";s:3:"50%";s:16:"inner_height_sec";s:3:"50%";s:17:"initial_width_sec";s:3:"300";s:18:"initial_height_sec";s:3:"100";s:13:"max_width_sec";s:5:"false";s:14:"max_height_sec";s:5:"false";s:10:"resize_sec";s:1:"1";s:11:"opacity_sec";s:3:"0.8";s:14:"preloading_sec";s:1:"1";s:15:"label_image_sec";s:5:"Image";s:12:"label_of_sec";s:2:"of";s:12:"previous_sec";s:8:"previous";s:8:"next_sec";s:4:"next";s:9:"close_sec";s:5:"close";s:17:"overlay_close_sec";s:1:"1";s:13:"slideshow_sec";s:1:"0";s:18:"slideshow_auto_sec";s:1:"1";s:19:"slideshow_speed_sec";s:4:"2500";s:19:"slideshow_start_sec";s:5:"start";s:18:"slideshow_stop_sec";s:4:"stop";s:10:"iframe_sec";s:1:"1";s:20:"use_class_method_sec";s:1:"0";s:14:"class_name_sec";s:8:"lbpModal";s:20:"no_display_title_sec";s:1:"0";s:12:"inline_links";N;s:12:"inline_hrefs";N;s:13:"inline_widths";N;s:14:"inline_heights";N;}', 'yes'),
(175, 'lightboxplus_init', '1', 'yes'),
(188, '_site_transient_timeout_theme_roots', '1357574645', 'yes'),
(189, '_site_transient_theme_roots', 'a:4:{s:13:"lightbox-plus";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:19:"wordpress-bootstrap";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1354550284:1'),
(4, 2, '_edit_lock', '1354548845:1'),
(5, 10, '_wp_attached_file', '2012/11/banner-772x250.jpg'),
(6, 10, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"772";s:6:"height";s:3:"250";s:14:"hwstring_small";s:23:"height=''41'' width=''128''";s:4:"file";s:26:"2012/11/banner-772x250.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:26:"banner-772x250-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:25:"banner-772x250-300x97.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"97";}s:13:"wpbs-featured";a:3:{s:4:"file";s:26:"banner-772x250-638x250.jpg";s:5:"width";s:3:"638";s:6:"height";s:3:"250";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:26:"banner-772x250-463x150.jpg";s:5:"width";s:3:"463";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:26:"banner-772x250-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:26:"banner-772x250-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(7, 11, '_wp_attached_file', '2012/11/banner-772x2501.jpg'),
(8, 11, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"772";s:6:"height";s:3:"250";s:14:"hwstring_small";s:23:"height=''41'' width=''128''";s:4:"file";s:27:"2012/11/banner-772x2501.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:27:"banner-772x2501-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:26:"banner-772x2501-300x97.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"97";}s:13:"wpbs-featured";a:3:{s:4:"file";s:27:"banner-772x2501-638x250.jpg";s:5:"width";s:3:"638";s:6:"height";s:3:"250";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:27:"banner-772x2501-463x150.jpg";s:5:"width";s:3:"463";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:27:"banner-772x2501-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:27:"banner-772x2501-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(9, 2, '_edit_last', '1'),
(10, 14, '_wp_attached_file', '2012/11/banner-772x2502.jpg'),
(11, 14, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"772";s:6:"height";s:3:"250";s:14:"hwstring_small";s:23:"height=''41'' width=''128''";s:4:"file";s:27:"2012/11/banner-772x2502.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:27:"banner-772x2502-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:26:"banner-772x2502-300x97.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"97";}s:13:"wpbs-featured";a:3:{s:4:"file";s:27:"banner-772x2502-638x250.jpg";s:5:"width";s:3:"638";s:6:"height";s:3:"250";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:27:"banner-772x2502-463x150.jpg";s:5:"width";s:3:"463";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:27:"banner-772x2502-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:27:"banner-772x2502-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(14, 16, '_wp_attached_file', '2012/11/banner-772x2503.jpg'),
(15, 16, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"772";s:6:"height";s:3:"250";s:14:"hwstring_small";s:23:"height=''41'' width=''128''";s:4:"file";s:27:"2012/11/banner-772x2503.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:27:"banner-772x2503-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:26:"banner-772x2503-300x97.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"97";}s:13:"wpbs-featured";a:3:{s:4:"file";s:27:"banner-772x2503-638x250.jpg";s:5:"width";s:3:"638";s:6:"height";s:3:"250";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:27:"banner-772x2503-463x150.jpg";s:5:"width";s:3:"463";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:27:"banner-772x2503-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:27:"banner-772x2503-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(16, 17, '_wp_attached_file', '2012/11/banner-772x2504.jpg'),
(17, 17, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"772";s:6:"height";s:3:"250";s:14:"hwstring_small";s:23:"height=''41'' width=''128''";s:4:"file";s:27:"2012/11/banner-772x2504.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:3:{s:4:"file";s:27:"banner-772x2504-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:26:"banner-772x2504-300x97.jpg";s:5:"width";s:3:"300";s:6:"height";s:2:"97";}s:13:"wpbs-featured";a:3:{s:4:"file";s:27:"banner-772x2504-638x250.jpg";s:5:"width";s:3:"638";s:6:"height";s:3:"250";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:27:"banner-772x2504-463x150.jpg";s:5:"width";s:3:"463";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:27:"banner-772x2504-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:27:"banner-772x2504-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(20, 20, '_edit_last', '1'),
(21, 20, '_edit_lock', '1354550368:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-11-26 15:14:35', '2012-11-26 15:14:35', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2012-11-26 15:14:35', '2012-11-26 15:14:35', '', 0, 'http://localhost/~hkhelil/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2012-11-26 15:14:35', '2012-11-26 15:14:35', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n&nbsp;\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickies to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/~hkhelil/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2012-12-03 15:35:21', '2012-12-03 15:35:21', '', 0, 'http://localhost/~hkhelil/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2012-11-26 15:36:47', '2012-11-26 15:36:47', '<div id="lipsum">\r\n\r\n<a href="http://localhost/~hkhelil/wordpress/wp-content/uploads/2012/11/banner-772x2504.jpg"><img class="alignleft size-medium wp-image-17" title="banner-772x250" src="http://localhost/~hkhelil/wordpress/wp-content/uploads/2012/11/banner-772x2504-300x97.jpg" alt="" /></a>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tincidunt lectus ut tellus malesuada congue. Donec ut dolor nisi. Pellentesque condimentum mauris sed tortor ullamcorper viverra. Sed sed leo vel purus dapibus feugiat sed ac nunc. Nam porttitor varius nunc, vitae fringilla sem pulvinar a. Pellentesque consectetur dictum ipsum, at pulvinar est rhoncus vitae. Quisque lobortis aliquet odio, id gravida magna ultricies et. Praesent in tincidunt augue. Curabitur ornare aliquet mi nec bibendum. Praesent scelerisque velit non dui tincidunt at adipiscing tellus bibendum. Sed feugiat arcu vel sapien egestas imperdiet. Nunc sodales dapibus neque, at commodo enim ultrices eu.\r\n\r\nPhasellus id mattis massa. Integer vel turpis at lectus ornare bibendum. Pellentesque tellus neque, egestas ut fermentum et, suscipit et risus. Nullam dapibus placerat ligula, vel rhoncus ligula luctus at. Aliquam erat volutpat. Nunc aliquet sagittis nulla id convallis. Donec nunc metus, dapibus nec varius nec, consectetur in nisi. Duis posuere, purus non auctor consequat, est neque convallis ante, ut tincidunt turpis nibh at nunc. Curabitur feugiat, eros vitae pulvinar bibendum, elit tortor rhoncus nulla, cursus volutpat turpis neque aliquet est.\r\n\r\nPraesent posuere risus nec sem lacinia vitae sollicitudin mi placerat. Vivamus ac nisl pulvinar libero porta mollis. Fusce semper vehicula nisi, at varius sem ultricies quis. Duis cursus vulputate tincidunt. Nam lectus sapien, auctor lobortis imperdiet ac, rhoncus ac eros. In fringilla, ligula at euismod interdum, tortor nisl tempus sem, ac varius nulla metus non metus. Nullam nisi est, luctus quis placerat id, convallis sit amet mauris. Duis congue metus quis nulla interdum ultrices. Proin eu ligula vel lorem sollicitudin sollicitudin. Nunc eleifend felis ut odio tempor a vulputate ipsum sodales. Nulla consectetur odio vitae libero venenatis et adipiscing libero bibendum.\r\n\r\nProin in nisi at ipsum mollis varius sed id arcu. Nullam ut urna ante, non auctor ante. Curabitur non euismod dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam nec metus at neque aliquam dapibus. Vestibulum pellentesque tempus dui, et aliquam mauris ultrices in. Donec id lectus non magna egestas tincidunt. Nulla aliquet, velit vel porta varius, nulla urna accumsan metus, vitae fringilla ligula neque a sapien. Fusce id dolor et lacus molestie scelerisque. Morbi augue dolor, euismod a cursus vel, feugiat rhoncus sem. Nunc ac sem tortor, vitae tincidunt metus. Aenean arcu neque, tincidunt sit amet auctor vel, pellentesque quis mauris.\r\n\r\nAenean vitae vestibulum justo. In at neque erat, at aliquet nisl. Ut sit amet nulla pharetra risus dictum luctus sit amet dapibus nulla. Phasellus condimentum odio sit amet magna tincidunt gravida. Aenean magna dui, egestas interdum fermentum vel, feugiat a mauris. Donec non commodo purus. Duis ac ligula orci, id iaculis mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque et lorem nulla. Integer vitae metus sed diam congue tincidunt. Nam convallis nulla ut nibh laoreet pellentesque. Etiam egestas consectetur purus vel tincidunt. Maecenas vitae magna eros. Mauris malesuada, arcu ac convallis gravida, nibh odio condimentum ipsum, sit amet interdum ipsum nisi vel purus.\r\n\r\n</div>', 'article', '', 'publish', 'open', 'open', '', 'article', '', '', '2012-12-03 15:38:11', '2012-12-03 15:38:11', '', 0, 'http://localhost/~hkhelil/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2012-11-26 15:35:38', '2012-11-26 15:35:38', '<div id="lipsum">\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tincidunt lectus ut tellus malesuada congue. Donec ut dolor nisi. Pellentesque condimentum mauris sed tortor ullamcorper viverra. Sed sed leo vel purus dapibus feugiat sed ac nunc. Nam porttitor varius nunc, vitae fringilla sem pulvinar a. Pellentesque consectetur dictum ipsum, at pulvinar est rhoncus vitae. Quisque lobortis aliquet odio, id gravida magna ultricies et. Praesent in tincidunt augue. Curabitur ornare aliquet mi nec bibendum. Praesent scelerisque velit non dui tincidunt at adipiscing tellus bibendum. Sed feugiat arcu vel sapien egestas imperdiet. Nunc sodales dapibus neque, at commodo enim ultrices eu.\n\nPhasellus id mattis massa. Integer vel turpis at lectus ornare bibendum. Pellentesque tellus neque, egestas ut fermentum et, suscipit et risus. Nullam dapibus placerat ligula, vel rhoncus ligula luctus at. Aliquam erat volutpat. Nunc aliquet sagittis nulla id convallis. Donec nunc metus, dapibus nec varius nec, consectetur in nisi. Duis posuere, purus non auctor consequat, est neque convallis ante, ut tincidunt turpis nibh at nunc. Curabitur feugiat, eros vitae pulvinar bibendum, elit tortor rhoncus nulla, cursus volutpat turpis neque aliquet est.\n\nPraesent posuere risus nec sem lacinia vitae sollicitudin mi placerat. Vivamus ac nisl pulvinar libero porta mollis. Fusce semper vehicula nisi, at varius sem ultricies quis. Duis cursus vulputate tincidunt. Nam lectus sapien, auctor lobortis imperdiet ac, rhoncus ac eros. In fringilla, ligula at euismod interdum, tortor nisl tempus sem, ac varius nulla metus non metus. Nullam nisi est, luctus quis placerat id, convallis sit amet mauris. Duis congue metus quis nulla interdum ultrices. Proin eu ligula vel lorem sollicitudin sollicitudin. Nunc eleifend felis ut odio tempor a vulputate ipsum sodales. Nulla consectetur odio vitae libero venenatis et adipiscing libero bibendum.\n\nProin in nisi at ipsum mollis varius sed id arcu. Nullam ut urna ante, non auctor ante. Curabitur non euismod dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam nec metus at neque aliquam dapibus. Vestibulum pellentesque tempus dui, et aliquam mauris ultrices in. Donec id lectus non magna egestas tincidunt. Nulla aliquet, velit vel porta varius, nulla urna accumsan metus, vitae fringilla ligula neque a sapien. Fusce id dolor et lacus molestie scelerisque. Morbi augue dolor, euismod a cursus vel, feugiat rhoncus sem. Nunc ac sem tortor, vitae tincidunt metus. Aenean arcu neque, tincidunt sit amet auctor vel, pellentesque quis mauris.\n\nAenean vitae vestibulum justo. In at neque erat, at aliquet nisl. Ut sit amet nulla pharetra risus dictum luctus sit amet dapibus nulla. Phasellus condimentum odio sit amet magna tincidunt gravida. Aenean magna dui, egestas interdum fermentum vel, feugiat a mauris. Donec non commodo purus. Duis ac ligula orci, id iaculis mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque et lorem nulla. Integer vitae metus sed diam congue tincidunt. Nam convallis nulla ut nibh laoreet pellentesque. Etiam egestas consectetur purus vel tincidunt. Maecenas vitae magna eros. Mauris malesuada, arcu ac convallis gravida, nibh odio condimentum ipsum, sit amet interdum ipsum nisi vel purus.\n\n</div>', 'article', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2012-11-26 15:35:38', '2012-11-26 15:35:38', '', 4, 'http://localhost/~hkhelil/wordpress/?p=5', 0, 'revision', '', 0),
(6, 1, '2012-11-26 15:36:34', '2012-11-26 15:36:34', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tincidunt lectus ut tellus malesuada congue. Donec ut dolor nisi. Pellentesque condimentum mauris sed tortor ullamcorper viverra. Sed sed leo vel purus dapibus feugiat sed ac nunc. Nam porttitor varius nunc, vitae fringilla sem pulvinar a. Pellentesque consectetur dictum ipsum, at pulvinar est rhoncus vitae. Quisque lobortis aliquet odio, id gravida magna ultricies et. Praesent in tincidunt augue. Curabitur ornare aliquet mi nec bibendum. Praesent scelerisque velit non dui tincidunt at adipiscing tellus bibendum. Sed feugiat arcu vel sapien egestas imperdiet. Nunc sodales dapibus neque, at commodo enim ultrices eu.\r\n\r\nPhasellus id mattis massa. Integer vel turpis at lectus ornare bibendum. Pellentesque tellus neque, egestas ut fermentum et, suscipit et risus. Nullam dapibus placerat ligula, vel rhoncus ligula luctus at. Aliquam erat volutpat. Nunc aliquet sagittis nulla id convallis. Donec nunc metus, dapibus nec varius nec, consectetur in nisi. Duis posuere, purus non auctor consequat, est neque convallis ante, ut tincidunt turpis nibh at nunc. Curabitur feugiat, eros vitae pulvinar bibendum, elit tortor rhoncus nulla, cursus volutpat turpis neque aliquet est.\r\n\r\nPraesent posuere risus nec sem lacinia vitae sollicitudin mi placerat. Vivamus ac nisl pulvinar libero porta mollis. Fusce semper vehicula nisi, at varius sem ultricies quis. Duis cursus vulputate tincidunt. Nam lectus sapien, auctor lobortis imperdiet ac, rhoncus ac eros. In fringilla, ligula at euismod interdum, tortor nisl tempus sem, ac varius nulla metus non metus. Nullam nisi est, luctus quis placerat id, convallis sit amet mauris. Duis congue metus quis nulla interdum ultrices. Proin eu ligula vel lorem sollicitudin sollicitudin. Nunc eleifend felis ut odio tempor a vulputate ipsum sodales. Nulla consectetur odio vitae libero venenatis et adipiscing libero bibendum.\r\n\r\nProin in nisi at ipsum mollis varius sed id arcu. Nullam ut urna ante, non auctor ante. Curabitur non euismod dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam nec metus at neque aliquam dapibus. Vestibulum pellentesque tempus dui, et aliquam mauris ultrices in. Donec id lectus non magna egestas tincidunt. Nulla aliquet, velit vel porta varius, nulla urna accumsan metus, vitae fringilla ligula neque a sapien. Fusce id dolor et lacus molestie scelerisque. Morbi augue dolor, euismod a cursus vel, feugiat rhoncus sem. Nunc ac sem tortor, vitae tincidunt metus. Aenean arcu neque, tincidunt sit amet auctor vel, pellentesque quis mauris.\r\n\r\nAenean vitae vestibulum justo. In at neque erat, at aliquet nisl. Ut sit amet nulla pharetra risus dictum luctus sit amet dapibus nulla. Phasellus condimentum odio sit amet magna tincidunt gravida. Aenean magna dui, egestas interdum fermentum vel, feugiat a mauris. Donec non commodo purus. Duis ac ligula orci, id iaculis mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque et lorem nulla. Integer vitae metus sed diam congue tincidunt. Nam convallis nulla ut nibh laoreet pellentesque. Etiam egestas consectetur purus vel tincidunt. Maecenas vitae magna eros. Mauris malesuada, arcu ac convallis gravida, nibh odio condimentum ipsum, sit amet interdum ipsum nisi vel purus.\r\n\r\n</div>', 'article', '', 'inherit', 'open', 'open', '', '4-revision-2', '', '', '2012-11-26 15:36:34', '2012-11-26 15:36:34', '', 4, 'http://localhost/~hkhelil/wordpress/?p=6', 0, 'revision', '', 0),
(9, 1, '2012-12-03 15:28:05', '2012-12-03 15:28:05', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n&nbsp;\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickies to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href="http://localhost/~hkhelil/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-autosave', '', '', '2012-12-03 15:28:05', '2012-12-03 15:28:05', '', 2, 'http://localhost/~hkhelil/wordpress/?p=9', 0, 'revision', '', 0),
(10, 1, '2012-12-03 15:32:31', '2012-12-03 15:32:31', '', 'banner-772x250', '', 'inherit', 'open', 'open', '', 'banner-772x250', '', '', '2012-12-03 15:32:31', '2012-12-03 15:32:31', '', 2, 'http://localhost/~hkhelil/wordpress/wp-content/uploads/2012/11/banner-772x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2012-12-03 15:33:51', '2012-12-03 15:33:51', '', 'banner-772x250', '', 'inherit', 'open', 'open', '', 'banner-772x250-2', '', '', '2012-12-03 15:33:51', '2012-12-03 15:33:51', '', 2, 'http://localhost/~hkhelil/wordpress/wp-content/uploads/2012/11/banner-772x2501.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2012-11-26 15:14:35', '2012-11-26 15:14:35', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickies to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/~hkhelil/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2012-11-26 15:14:35', '2012-11-26 15:14:35', '', 2, 'http://localhost/~hkhelil/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2012-12-03 15:35:01', '2012-12-03 15:35:01', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n\r\n[gallery]\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickies to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/~hkhelil/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-2', '', '', '2012-12-03 15:35:01', '2012-12-03 15:35:01', '', 2, 'http://localhost/~hkhelil/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2012-12-03 15:36:50', '2012-12-03 15:36:50', '', 'banner-772x250', '', 'inherit', 'open', 'open', '', 'banner-772x250-3', '', '', '2012-12-03 15:36:50', '2012-12-03 15:36:50', '', 4, 'http://localhost/~hkhelil/wordpress/wp-content/uploads/2012/11/banner-772x2502.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2012-11-26 15:36:47', '2012-11-26 15:36:47', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tincidunt lectus ut tellus malesuada congue. Donec ut dolor nisi. Pellentesque condimentum mauris sed tortor ullamcorper viverra. Sed sed leo vel purus dapibus feugiat sed ac nunc. Nam porttitor varius nunc, vitae fringilla sem pulvinar a. Pellentesque consectetur dictum ipsum, at pulvinar est rhoncus vitae. Quisque lobortis aliquet odio, id gravida magna ultricies et. Praesent in tincidunt augue. Curabitur ornare aliquet mi nec bibendum. Praesent scelerisque velit non dui tincidunt at adipiscing tellus bibendum. Sed feugiat arcu vel sapien egestas imperdiet. Nunc sodales dapibus neque, at commodo enim ultrices eu.\r\n\r\nPhasellus id mattis massa. Integer vel turpis at lectus ornare bibendum. Pellentesque tellus neque, egestas ut fermentum et, suscipit et risus. Nullam dapibus placerat ligula, vel rhoncus ligula luctus at. Aliquam erat volutpat. Nunc aliquet sagittis nulla id convallis. Donec nunc metus, dapibus nec varius nec, consectetur in nisi. Duis posuere, purus non auctor consequat, est neque convallis ante, ut tincidunt turpis nibh at nunc. Curabitur feugiat, eros vitae pulvinar bibendum, elit tortor rhoncus nulla, cursus volutpat turpis neque aliquet est.\r\n\r\nPraesent posuere risus nec sem lacinia vitae sollicitudin mi placerat. Vivamus ac nisl pulvinar libero porta mollis. Fusce semper vehicula nisi, at varius sem ultricies quis. Duis cursus vulputate tincidunt. Nam lectus sapien, auctor lobortis imperdiet ac, rhoncus ac eros. In fringilla, ligula at euismod interdum, tortor nisl tempus sem, ac varius nulla metus non metus. Nullam nisi est, luctus quis placerat id, convallis sit amet mauris. Duis congue metus quis nulla interdum ultrices. Proin eu ligula vel lorem sollicitudin sollicitudin. Nunc eleifend felis ut odio tempor a vulputate ipsum sodales. Nulla consectetur odio vitae libero venenatis et adipiscing libero bibendum.\r\n\r\nProin in nisi at ipsum mollis varius sed id arcu. Nullam ut urna ante, non auctor ante. Curabitur non euismod dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam nec metus at neque aliquam dapibus. Vestibulum pellentesque tempus dui, et aliquam mauris ultrices in. Donec id lectus non magna egestas tincidunt. Nulla aliquet, velit vel porta varius, nulla urna accumsan metus, vitae fringilla ligula neque a sapien. Fusce id dolor et lacus molestie scelerisque. Morbi augue dolor, euismod a cursus vel, feugiat rhoncus sem. Nunc ac sem tortor, vitae tincidunt metus. Aenean arcu neque, tincidunt sit amet auctor vel, pellentesque quis mauris.\r\n\r\nAenean vitae vestibulum justo. In at neque erat, at aliquet nisl. Ut sit amet nulla pharetra risus dictum luctus sit amet dapibus nulla. Phasellus condimentum odio sit amet magna tincidunt gravida. Aenean magna dui, egestas interdum fermentum vel, feugiat a mauris. Donec non commodo purus. Duis ac ligula orci, id iaculis mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque et lorem nulla. Integer vitae metus sed diam congue tincidunt. Nam convallis nulla ut nibh laoreet pellentesque. Etiam egestas consectetur purus vel tincidunt. Maecenas vitae magna eros. Mauris malesuada, arcu ac convallis gravida, nibh odio condimentum ipsum, sit amet interdum ipsum nisi vel purus.\r\n\r\n</div>', 'article', '', 'inherit', 'open', 'open', '', '4-revision-3', '', '', '2012-11-26 15:36:47', '2012-11-26 15:36:47', '', 4, 'http://localhost/~hkhelil/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2012-12-03 15:37:41', '2012-12-03 15:37:41', '', 'banner-772x250', '', 'inherit', 'open', 'open', '', 'banner-772x250-4', '', '', '2012-12-03 15:37:41', '2012-12-03 15:37:41', '', 4, 'http://localhost/~hkhelil/wordpress/wp-content/uploads/2012/11/banner-772x2503.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2012-12-03 15:37:55', '2012-12-03 15:37:55', '', 'banner-772x250', '', 'inherit', 'open', 'open', '', 'banner-772x250-5', '', '', '2012-12-03 15:37:55', '2012-12-03 15:37:55', '', 4, 'http://localhost/~hkhelil/wordpress/wp-content/uploads/2012/11/banner-772x2504.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2012-12-03 15:37:18', '2012-12-03 15:37:18', '<div id="lipsum">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tincidunt lectus ut tellus malesuada congue. Donec ut dolor nisi. Pellentesque condimentum mauris sed tortor ullamcorper viverra. Sed sed leo vel purus dapibus feugiat sed ac nunc. Nam porttitor varius nunc, vitae fringilla sem pulvinar a. Pellentesque consectetur dictum ipsum, at pulvinar est rhoncus vitae. Quisque lobortis aliquet odio, id gravida magna ultricies et. Praesent in tincidunt augue. Curabitur ornare aliquet mi nec bibendum. Praesent scelerisque velit non dui tincidunt at adipiscing tellus bibendum. Sed feugiat arcu vel sapien egestas imperdiet. Nunc sodales dapibus neque, at commodo enim ultrices eu.\r\n\r\nPhasellus id mattis massa. Integer vel turpis at lectus ornare bibendum. Pellentesque tellus neque, egestas ut fermentum et, suscipit et risus. Nullam dapibus placerat ligula, vel rhoncus ligula luctus at. Aliquam erat volutpat. Nunc aliquet sagittis nulla id convallis. Donec nunc metus, dapibus nec varius nec, consectetur in nisi. Duis posuere, purus non auctor consequat, est neque convallis ante, ut tincidunt turpis nibh at nunc. Curabitur feugiat, eros vitae pulvinar bibendum, elit tortor rhoncus nulla, cursus volutpat turpis neque aliquet est.\r\n\r\nPraesent posuere risus nec sem lacinia vitae sollicitudin mi placerat. Vivamus ac nisl pulvinar libero porta mollis. Fusce semper vehicula nisi, at varius sem ultricies quis. Duis cursus vulputate tincidunt. Nam lectus sapien, auctor lobortis imperdiet ac, rhoncus ac eros. In fringilla, ligula at euismod interdum, tortor nisl tempus sem, ac varius nulla metus non metus. Nullam nisi est, luctus quis placerat id, convallis sit amet mauris. Duis congue metus quis nulla interdum ultrices. Proin eu ligula vel lorem sollicitudin sollicitudin. Nunc eleifend felis ut odio tempor a vulputate ipsum sodales. Nulla consectetur odio vitae libero venenatis et adipiscing libero bibendum.\r\n\r\nProin in nisi at ipsum mollis varius sed id arcu. Nullam ut urna ante, non auctor ante. Curabitur non euismod dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam nec metus at neque aliquam dapibus. Vestibulum pellentesque tempus dui, et aliquam mauris ultrices in. Donec id lectus non magna egestas tincidunt. Nulla aliquet, velit vel porta varius, nulla urna accumsan metus, vitae fringilla ligula neque a sapien. Fusce id dolor et lacus molestie scelerisque. Morbi augue dolor, euismod a cursus vel, feugiat rhoncus sem. Nunc ac sem tortor, vitae tincidunt metus. Aenean arcu neque, tincidunt sit amet auctor vel, pellentesque quis mauris.\r\n\r\nAenean vitae vestibulum justo. In at neque erat, at aliquet nisl. Ut sit amet nulla pharetra risus dictum luctus sit amet dapibus nulla. Phasellus condimentum odio sit amet magna tincidunt gravida. Aenean magna dui, egestas interdum fermentum vel, feugiat a mauris. Donec non commodo purus. Duis ac ligula orci, id iaculis mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque et lorem nulla. Integer vitae metus sed diam congue tincidunt. Nam convallis nulla ut nibh laoreet pellentesque. Etiam egestas consectetur purus vel tincidunt. Maecenas vitae magna eros. Mauris malesuada, arcu ac convallis gravida, nibh odio condimentum ipsum, sit amet interdum ipsum nisi vel purus.\r\n\r\n</div>', 'article', '', 'inherit', 'open', 'open', '', '4-revision-4', '', '', '2012-12-03 15:37:18', '2012-12-03 15:37:18', '', 4, 'http://localhost/~hkhelil/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2012-12-03 15:39:13', '2012-12-03 15:39:13', '<div id="lipsum">\n\n<a href="http://localhost/~hkhelil/wordpress/wp-content/uploads/2012/11/banner-772x2504.jpg"><img class="alignleft size-medium wp-image-17" title="banner-772x250" src="http://localhost/~hkhelil/wordpress/wp-content/uploads/2012/11/banner-772x2504-300x97.jpg" alt="" /></a>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tincidunt lectus ut tellus malesuada congue. Donec ut dolor nisi. Pellentesque condimentum mauris sed tortor ullamcorper viverra. Sed sed leo vel purus dapibus feugiat sed ac nunc. Nam porttitor varius nunc, vitae fringilla sem pulvinar a. Pellentesque consectetur dictum ipsum, at pulvinar est rhoncus vitae. Quisque lobortis aliquet odio, id gravida magna ultricies et. Praesent in tincidunt augue. Curabitur ornare aliquet mi nec bibendum. Praesent scelerisque velit non dui tincidunt at adipiscing tellus bibendum. Sed feugiat arcu vel sapien egestas imperdiet. Nunc sodales dapibus neque, at commodo enim ultrices eu.\n\nPhasellus id mattis massa. Integer vel turpis at lectus ornare bibendum. Pellentesque tellus neque, egestas ut fermentum et, suscipit et risus. Nullam dapibus placerat ligula, vel rhoncus ligula luctus at. Aliquam erat volutpat. Nunc aliquet sagittis nulla id convallis. Donec nunc metus, dapibus nec varius nec, consectetur in nisi. Duis posuere, purus non auctor consequat, est neque convallis ante, ut tincidunt turpis nibh at nunc. Curabitur feugiat, eros vitae pulvinar bibendum, elit tortor rhoncus nulla, cursus volutpat turpis neque aliquet est.\n\nPraesent posuere risus nec sem lacinia vitae sollicitudin mi placerat. Vivamus ac nisl pulvinar libero porta mollis. Fusce semper vehicula nisi, at varius sem ultricies quis. Duis cursus vulputate tincidunt. Nam lectus sapien, auctor lobortis imperdiet ac, rhoncus ac eros. In fringilla, ligula at euismod interdum, tortor nisl tempus sem, ac varius nulla metus non metus. Nullam nisi est, luctus quis placerat id, convallis sit amet mauris. Duis congue metus quis nulla interdum ultrices. Proin eu ligula vel lorem sollicitudin sollicitudin. Nunc eleifend felis ut odio tempor a vulputate ipsum sodales. Nulla consectetur odio vitae libero venenatis et adipiscing libero bibendum.\n\nProin in nisi at ipsum mollis varius sed id arcu. Nullam ut urna ante, non auctor ante. Curabitur non euismod dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam nec metus at neque aliquam dapibus. Vestibulum pellentesque tempus dui, et aliquam mauris ultrices in. Donec id lectus non magna egestas tincidunt. Nulla aliquet, velit vel porta varius, nulla urna accumsan metus, vitae fringilla ligula neque a sapien. Fusce id dolor et lacus molestie scelerisque. Morbi augue dolor, euismod a cursus vel, feugiat rhoncus sem. Nunc ac sem tortor, vitae tincidunt metus. Aenean arcu neque, tincidunt sit amet auctor vel, pellentesque quis mauris.\n\nAenean vitae vestibulum justo. In at neque erat, at aliquet nisl. Ut sit amet nulla pharetra risus dictum luctus sit amet dapibus nulla. Phasellus condimentum odio sit amet magna tincidunt gravida. Aenean magna dui, egestas interdum fermentum vel, feugiat a mauris. Donec non commodo purus. Duis ac ligula orci, id iaculis mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque et lorem nulla. Integer vitae metus sed diam congue tincidunt. Nam convallis nulla ut nibh laoreet pellentesque. Etiam egestas consectetur purus vel tincidunt. Maecenas vitae magna eros. Mauris malesuada, arcu ac convallis gravida, nibh odio condimentum ipsum, sit amet interdum ipsum nisi vel purus.\n\n</div>', 'article', '', 'inherit', 'open', 'open', '', '4-autosave', '', '', '2012-12-03 15:39:13', '2012-12-03 15:39:13', '', 4, 'http://localhost/~hkhelil/wordpress/?p=19', 0, 'revision', '', 0),
(20, 1, '2012-12-03 16:00:11', '2012-12-03 16:00:11', '<iframe width="560" height="315" src="http://www.youtube.com/embed/GudkpV7H6LA" frameborder="0" allowfullscreen></iframe>', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2012-12-03 16:00:11', '2012-12-03 16:00:11', '', 0, 'http://localhost/~hkhelil/wordpress/?p=20', 0, 'post', '', 0),
(21, 1, '2012-12-03 16:00:10', '2012-12-03 16:00:10', '<iframe width="560" height="315" src="http://www.youtube.com/embed/GudkpV7H6LA" frameborder="0" allowfullscreen></iframe>', 'test', '', 'inherit', 'open', 'open', '', '20-revision', '', '', '2012-12-03 16:00:10', '2012-12-03 16:00:10', '', 20, 'http://localhost/~hkhelil/wordpress/?p=21', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Blogroll', 'blogroll', 0),
(7, 'test', 'test', 0),
(9, 'test2', 'test2', 0),
(10, 'zest', 'zest', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 1, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(20, 9, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'link_category', '', 0, 7),
(7, 7, 'category', '', 0, 0),
(9, 9, 'category', '', 7, 1),
(10, 10, 'category', '', 9, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'khelil'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '8'),
(15, 1, 'wp_user-settings', 'hidetb=1&align=left&imgsize=medium&editor=html'),
(16, 1, 'wp_user-settings-time', '1354550408');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'khelil', '$P$BsN0mCy3AXCqeYfLTvEOHHYMlefTi5/', 'khelil', 'hassinakh@yahoo.fr', '', '2012-11-26 15:14:33', '', 0, 'khelil');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
