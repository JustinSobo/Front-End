# WordPress MySQL database migration
#
# Generated: Thursday 11. September 2014 15:22 UTC
# Hostname: localhost
# Database: `kmdig_bh`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
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
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-08-25 14:40:49', '2014-08-25 14:40:49', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=700 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://kmdig.com/client/bhdefense', 'yes'),
(2, 'blogname', 'BH Defense', 'yes'),
(3, 'blogdescription', 'We Attack Your Risks Before They Attack Your Success', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'info@kmdig.com', 'yes'),
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
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'comment_moderation', '0', 'yes'),
(26, 'moderation_notify', '1', 'yes'),
(27, 'permalink_structure', '/%postname%/', 'yes'),
(28, 'gzipcompression', '0', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:7:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:29:"gravityforms/gravityforms.php";i:2;s:49:"roots-wrapper-override/roots-wrapper-override.php";i:3;s:41:"wordpress-importer/wordpress-importer.php";i:4;s:24:"wordpress-seo/wp-seo.php";i:5;s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";i:6;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";}', 'yes'),
(33, 'home', 'http://kmdig.com/client/bhdefense', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '-4', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:71:"/home/kmdig/public_html/client/bhdefense/wp-content/themes/bh/style.css";i:2;s:76:"/home/kmdig/public_html/client/bhdefense/wp-content/themes/bh/lib/config.php";i:3;s:70:"/home/kmdig/public_html/client/bhdefense/wp-content/themes/bh/base.php";i:4;s:78:"/home/kmdig/public_html/client/bhdefense/wp-content/themes/bh/base-sidebar.php";i:5;s:95:"/home/kmdig/public_html/client/bhdefense/wp-content/themes/bhdefense/templates/content-home.php";}', 'no'),
(41, 'template', 'bh', 'yes'),
(42, 'stylesheet', 'bh', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
(50, 'uploads_use_yearmonth_folders', '0', 'yes'),
(51, 'upload_path', 'media', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:424:"<p style="text-align: center;"><img class="size-full wp-image-277 aligncenter" src="http://kmdig.com/client/bhdefense/media/footer-logo.png" alt="footer-logo" width="324" height="207" /></p>\r\n<p style="text-align: center;">USA: +1-888-491-5060</p>\r\n<p style="text-align: center;">Cyprus: +357 99 247 365</p>\r\n<p style="text-align: center;">Jordan: +962-796056928</p>\r\n<p style="text-align: center;">Iraq: +964-7905980279</p>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:2:{s:43:"google-analytics-dashboard-for-wp/gadwp.php";a:2:{i:0;s:16:"GADASH_Uninstall";i:1;s:9:"uninstall";}s:57:"simple-share-buttons-adder/simple-share-buttons-adder.php";s:14:"ssba_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '63', 'yes'),
(85, 'page_on_front', '5', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '27916', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:69:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:22:"gravityforms_mailchimp";b:1;s:32:"gravityforms_mailchimp_uninstall";b:1;s:19:"gravityforms_paypal";b:1;s:29:"gravityforms_paypal_uninstall";b:1;s:18:"gravityforms_orbtr";b:1;s:28:"gravityforms_orbtr_uninstall";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:11:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:6:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:1:{i:0;s:10:"nav_menu-8";}s:18:"sidebar-footer-one";a:1:{i:0;s:6:"text-2";}s:18:"sidebar-footer-two";a:2:{i:0;s:10:"nav_menu-2";i:1;s:10:"nav_menu-3";}s:20:"sidebar-footer-three";a:2:{i:0;s:10:"nav_menu-4";i:1;s:10:"nav_menu-5";}s:19:"sidebar-footer-four";a:2:{i:0;s:10:"nav_menu-6";i:1;s:10:"nav_menu-7";}s:21:"sidebar-footer-bottom";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1410450913;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1410489649;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1410489653;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1410532877;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(97, 'theme_mods_siteground-wp63', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1340197901;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:4:{i:0;s:10:"calendar-2";i:1;s:6:"meta-3";i:2;s:8:"search-3";i:3;s:5:"rss-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(98, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'theme_mods_siteground-wp23', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1340196335;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"orphaned_widgets_1";a:4:{i:0;s:10:"calendar-2";i:1;s:5:"rss-2";i:2;s:6:"meta-3";i:3;s:8:"search-3";}}}}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'theme_mods_siteground-wp73', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1340197215;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:1:{i:0;s:5:"rss-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:3:{i:0;s:8:"search-3";i:1;s:10:"calendar-2";i:2;s:6:"meta-3";}}}}', 'yes'),
(102, 'theme_mods_Universe', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1340196411;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:2:{i:0;s:5:"rss-2";i:1;s:6:"meta-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:2:{i:0;s:8:"search-3";i:1;s:10:"calendar-2";}}}}', 'yes'),
(109, 'sg_cachepress', 'a:3:{s:12:"enable_cache";i:0;s:15:"autoflush_cache";i:1;s:16:"enable_memcached";i:0;}', 'yes'),
(135, 'theme_mods_World', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1408977736;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:4:{i:0;s:10:"calendar-2";i:1;s:5:"rss-2";i:2;s:6:"meta-3";i:3;s:8:"search-3";}}}}', 'yes'),
(136, 'current_theme', 'Srout', 'yes'),
(137, 'theme_mods_twentyfourteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1408994926;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:1:{i:0;s:10:"nav_menu-2";}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(147, 'theme_mods_bh', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:18:"primary_navigation";i:2;s:14:"top_navigation";i:10;}}', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(198, 'widget_nav_menu', 'a:8:{i:2;a:2:{s:5:"title";s:5:"About";s:8:"nav_menu";i:5;}i:3;a:2:{s:5:"title";s:9:"Solutions";s:8:"nav_menu";i:8;}i:4;a:2:{s:5:"title";s:10:"The Stakes";s:8:"nav_menu";i:7;}i:5;a:2:{s:5:"title";s:9:"Customers";s:8:"nav_menu";i:6;}i:6;a:2:{s:5:"title";s:16:"News & Resources";s:8:"nav_menu";i:4;}i:7;a:2:{s:5:"title";s:8:"Partners";s:8:"nav_menu";i:3;}i:8;a:2:{s:5:"title";s:8:"Test Nav";s:8:"nav_menu";i:8;}s:12:"_multiwidget";i:1;}', 'yes'),
(209, 'theme_mods_bhdefense', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1408994620;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:0:{}s:18:"sidebar-footer-one";a:1:{i:0;s:10:"nav_menu-2";}s:18:"sidebar-footer-two";a:0:{}s:20:"sidebar-footer-three";N;s:19:"sidebar-footer-four";N;s:21:"sidebar-footer-bottom";N;}}}', 'yes'),
(217, 'recently_activated', 'a:0:{}', 'yes'),
(218, 'acf_version', '5.0.2', 'yes'),
(221, 'roots_theme_activation_options', 'a:4:{s:17:"create_front_page";b:0;s:26:"change_permalink_structure";b:0;s:23:"create_navigation_menus";b:0;s:31:"add_pages_to_primary_navigation";b:0;}', 'yes'),
(225, 'seed_csp4_settings_content', 'a:9:{s:6:"status";s:1:"0";s:4:"logo";s:0:"";s:8:"headline";s:0:"";s:11:"description";s:0:"";s:13:"footer_credit";s:1:"0";s:7:"favicon";s:0:"";s:9:"seo_title";s:0:"";s:15:"seo_description";s:0:"";s:12:"ga_analytics";s:0:"";}', 'yes'),
(226, 'seed_csp4_settings_design', 'a:12:{s:8:"bg_color";s:7:"#fafafa";s:8:"bg_image";s:0:"";s:8:"bg_cover";a:1:{i:0;s:1:"1";}s:9:"bg_repeat";s:9:"no-repeat";s:11:"bg_position";s:8:"left top";s:13:"bg_attahcment";s:5:"fixed";s:9:"max_width";s:0:"";s:10:"text_color";s:7:"#666666";s:10:"link_color";s:7:"#27AE60";s:14:"headline_color";s:7:"#444444";s:9:"text_font";s:6:"_arial";s:10:"custom_css";s:0:"";}', 'yes'),
(227, 'seed_csp4_settings_advanced', 'a:2:{s:14:"header_scripts";s:0:"";s:14:"footer_scripts";s:0:"";}', 'yes'),
(234, 'EBS_SHORTCODE_PREFIX', '', 'yes'),
(236, 'EBS_CUSTOM_CSS', '', 'yes'),
(237, 'gadash_options', '{"ga_dash_apikey":"","ga_dash_clientid":"","ga_dash_clientsecret":"","ga_dash_access_front":["administrator"],"ga_dash_access_back":["administrator"],"ga_dash_tableid_jail":"","ga_dash_pgd":0,"ga_dash_rd":0,"ga_dash_sd":0,"ga_dash_map":0,"ga_dash_traffic":0,"ga_dash_style":"#3366CC","ga_dash_jailadmins":1,"ga_dash_cachetime":3600,"ga_dash_tracking":1,"ga_dash_tracking_type":"universal","ga_dash_default_ua":"","ga_dash_anonim":0,"ga_dash_userapi":0,"ga_event_tracking":0,"ga_event_downloads":"zip|ra*|mp*|avi|flv|mpeg|pdf|doc*|ppt*|xls*|jp*|png|gif|tiff|bmp|txt","ga_track_exclude":[],"ga_target_geomap":"","ga_target_number":10,"ga_realtime_pages":10,"ga_dash_token":"","ga_dash_refresh_token":"","ga_dash_profile_list":"","ga_dash_tableid":"","ga_dash_frontend_keywords":0,"ga_tracking_code":"","ga_enhanced_links":0,"ga_dash_remarketing":0,"ga_dash_default_metric":"visits","ga_dash_default_dimension":"30daysAgo","ga_dash_frontend_stats":0,"ga_dash_network":0}', 'yes'),
(239, 'digest', '1', 'yes'),
(241, 'ssba_version', '4.7', 'yes'),
(242, 'ssba_image_set', 'somacro', 'yes'),
(243, 'ssba_size', '35', 'yes'),
(244, 'ssba_pages', '', 'yes'),
(245, 'ssba_posts', '', 'yes'),
(246, 'ssba_cats_archs', '', 'yes'),
(247, 'ssba_homepage', '', 'yes'),
(248, 'ssba_excerpts', '', 'yes'),
(249, 'ssba_align', 'left', 'yes'),
(250, 'ssba_padding', '6', 'yes'),
(251, 'ssba_before_or_after', 'after', 'yes'),
(252, 'ssba_custom_styles', '', 'yes'),
(253, 'ssba_email_message', '', 'yes'),
(254, 'ssba_twitter_text', '', 'yes'),
(255, 'ssba_buffer_text', '', 'yes'),
(256, 'ssba_flattr_user_id', '', 'yes'),
(257, 'ssba_flattr_url', '', 'yes'),
(258, 'ssba_share_new_window', 'Y', 'yes'),
(259, 'ssba_link_to_ssb', 'N', 'yes'),
(260, 'ssba_show_share_count', '', 'yes'),
(261, 'ssba_share_count_style', 'default', 'yes'),
(262, 'ssba_share_count_css', '', 'yes'),
(263, 'ssba_share_count_once', 'Y', 'yes'),
(264, 'ssba_widget_text', '', 'yes'),
(265, 'ssba_rel_nofollow', '', 'yes'),
(266, 'ssba_div_padding', '', 'yes'),
(267, 'ssba_div_rounded_corners', '', 'yes'),
(268, 'ssba_border_width', '', 'yes'),
(269, 'ssba_div_border', '#59625c', 'yes'),
(270, 'ssba_div_background', '', 'yes'),
(271, 'ssba_share_text', 'Don\'t be shellfish...', 'yes'),
(272, 'ssba_text_placement', 'left', 'yes'),
(273, 'ssba_font_family', 'Indie Flower', 'yes'),
(274, 'ssba_font_color', '', 'yes'),
(275, 'ssba_font_size', '20', 'yes'),
(276, 'ssba_font_weight', '', 'yes'),
(277, 'ssba_selected_buttons', '', 'yes'),
(278, 'ssba_custom_email', '', 'yes'),
(279, 'ssba_custom_google', '', 'yes'),
(280, 'ssba_custom_facebook', '', 'yes'),
(281, 'ssba_custom_twitter', '', 'yes'),
(282, 'ssba_custom_diggit', '', 'yes'),
(283, 'ssba_custom_linkedin', '', 'yes'),
(284, 'ssba_custom_reddit', '', 'yes'),
(285, 'ssba_custom_stumbleupon', '', 'yes'),
(286, 'ssba_custom_pinterest', '', 'yes'),
(287, 'ssba_custom_buffer', '', 'yes'),
(288, 'ssba_custom_flattr', '', 'yes'),
(289, 'ssba_custom_tumblr', '', 'yes'),
(290, 'ssba_custom_print', '', 'yes'),
(291, 'wpseo_titles', 'a:60:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:14:"hide-feedlinks";b:0;s:12:"hide-rsdlink";b:0;s:14:"hide-shortlink";b:0;s:16:"hide-wlwmanifest";b:0;s:5:"noodp";b:0;s:6:"noydir";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page Not Found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:17:"noauthorship-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:17:"noauthorship-page";b:1;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:23:"noauthorship-attachment";b:1;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(292, 'rg_form_version', '1.7.13', 'yes'),
(294, 'wpseo', 'a:18:{s:14:"blocking_files";a:0:{}s:26:"ignore_blog_public_warning";b:0;s:31:"ignore_meta_description_warning";b:0;s:20:"ignore_page_comments";b:0;s:16:"ignore_permalink";b:0;s:11:"ignore_tour";b:1;s:15:"ms_defaults_set";b:0;s:23:"theme_description_found";s:0:"";s:21:"theme_has_description";N;s:19:"tracking_popup_done";b:1;s:7:"version";s:7:"1.5.5.3";s:11:"alexaverify";s:0:"";s:20:"disableadvanced_meta";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:15:"pinterestverify";s:0:"";s:12:"yandexverify";s:0:"";s:14:"yoast_tracking";b:0;}', 'yes'),
(295, 'wpseo_permalinks', 'a:10:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:15:"force_transport";s:7:"default";s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(296, 'wpseo_social', 'a:14:{s:9:"fb_admins";a:0:{}s:6:"fbapps";a:0:{}s:12:"fbconnectkey";s:32:"880870bf0e893aa5639d8633947041a3";s:13:"facebook_site";s:0:"";s:16:"og_default_image";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:10:"googleplus";b:0;s:14:"plus-publisher";s:0:"";s:7:"twitter";b:0;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:10:"fbadminapp";i:0;}', 'yes'),
(297, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(298, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(299, 'wpseo_xml', 'a:11:{s:22:"disable_author_sitemap";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"xml_ping_yahoo";b:0;s:12:"xml_ping_ask";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(438, 'category_children', 'a:0:{}', 'yes'),
(551, 'WPLANG', '', 'yes'),
(552, 'db_upgraded', '', 'yes'),
(557, 'can_compress_scripts', '1', 'yes'),
(571, 'wpmdb_error_log', '********************************************\n******  Log date: 2014/09/02 18:27:00 ******\n********************************************\n\nWPMDB Error: The connection failed, an unexpected error occurred, please contact support. (#121 - scope: ajax_verify_connection_to_remote_site)\n\nAttempted to connect to: http://kmdig.dev/bhdefense/app/wp-admin/admin-ajax.php\n\nWP_Error Object\n(\n    [errors] => Array\n        (\n            [http_request_failed] => Array\n                (\n                    [0] => Couldn\'t resolve host \'kmdig.dev\'\n                )\n\n        )\n\n    [error_data] => Array\n        (\n        )\n\n)\n\n\n********************************************\n******  Log date: 2014/09/02 18:27:02 ******\n********************************************\n\nWPMDB Error: The connection failed, an unexpected error occurred, please contact support. (#121 - scope: ajax_verify_connection_to_remote_site)\n\nAttempted to connect to: http://kmdig.dev/bhdefense/app/wp-admin/admin-ajax.php\n\nWP_Error Object\n(\n    [errors] => Array\n        (\n            [http_request_failed] => Array\n                (\n                    [0] => Couldn\'t resolve host \'kmdig.dev\'\n                )\n\n        )\n\n    [error_data] => Array\n        (\n        )\n\n)\n\n\n', 'yes'),
(572, 'wpmdb_settings', 'a:8:{s:11:"max_request";i:1048576;s:3:"key";s:32:"cpDbekJ1Wz12oHNk9q/2Jz2PNeZSdNFg";s:10:"allow_pull";b:1;s:10:"allow_push";b:1;s:8:"profiles";a:0:{}s:7:"licence";s:36:"73c4e090-3f03-41cd-92e7-7e62dd1bcd7a";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(574, '_transient_timeout_wpseo_sitemap_cache_1_', '1410469137', 'no'),
(575, '_transient_wpseo_sitemap_cache_1_', '<sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n<sitemap>\n<loc>http://kmdig.com/client/bhdefense/post-sitemap.xml</loc>\n<lastmod>2014-09-08T12:48:57-04:00</lastmod>\n</sitemap>\n<sitemap>\n<loc>http://kmdig.com/client/bhdefense/page-sitemap.xml</loc>\n<lastmod>2014-09-08T19:53:09-04:00</lastmod>\n</sitemap>\n<sitemap>\n<loc>http://kmdig.com/client/bhdefense/category-sitemap.xml</loc>\n<lastmod>2014-09-08T12:48:57-04:00</lastmod>\n</sitemap>\n<sitemap>\n<loc>http://kmdig.com/client/bhdefense/post_tag-sitemap.xml</loc>\n<lastmod>2014-09-08T12:48:57-04:00</lastmod>\n</sitemap>\n</sitemapindex>', 'no'),
(582, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1410447353;s:15:"version_checked";s:3:"4.0";s:12:"translations";a:0:{}}', 'yes'),
(592, '_transient_timeout_wpseo_sitemap_cache_category_', '1410212297', 'no'),
(593, '_transient_wpseo_sitemap_cache_category_', '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/category/news/</loc>\n		<lastmod>2014-09-02T16:45:02-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/category/uncategorized/</loc>\n		<lastmod>2014-09-02T16:44:51-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.4</priority>\n	</url>\n</urlset>', 'no'),
(599, '_transient_timeout_wpseo_sitemap_cache_page_', '1410446786', 'no'),
(600, '_transient_wpseo_sitemap_cache_page_', '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:image="http://www.google.com/schemas/sitemap-image/1.1" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/</loc>\n		<lastmod>2014-09-08T16:03:37-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>1</priority>\n		<image:image>\n			<image:loc>http://kmdig.com/client/bhdefense/media/airpatrol.png</image:loc>\n			<image:caption><![CDATA[airpatrol]]></image:caption>\n		</image:image>\n		<image:image>\n			<image:loc>http://kmdig.com/client/bhdefense/media/bosch.png</image:loc>\n			<image:caption><![CDATA[bosch]]></image:caption>\n		</image:image>\n		<image:image>\n			<image:loc>http://kmdig.com/client/bhdefense/media/nflabs.png</image:loc>\n			<image:caption><![CDATA[nflabs]]></image:caption>\n		</image:image>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/about/</loc>\n		<lastmod>2014-09-08T19:53:09-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n		<image:image>\n			<image:loc>http://kmdig.com/client/bhdefense/media/header-sample.jpg</image:loc>\n			<image:caption><![CDATA[About]]></image:caption>\n		</image:image>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/about/our-team/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/about/iso-certification/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/solutions/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/solutions/how-we-work/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/solutions/consulting/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/solutions/security/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/solutions/logistics-supply-chain/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/solutions/project-management/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/solutions/construction/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/solutions/training/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/the-stakes/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/the-stakes/why-choose-us/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/the-stakes/measuring-roi/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/the-stakes/risk-calculator/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/customers/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/customers/it-communications/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/customers/power-electricoilgas/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/customers/water-supply/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/customers/government-services/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/customers/healthcare/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/customers/transportation/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/customers/financebanking/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/news/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/news/whitepapers-tools/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/news/iraqi-children-foundation/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/partners/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/partners/north-america/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/partners/europe/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/partners/middle-east/</loc>\n		<lastmod>2014-08-25T18:56:20-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/contact/</loc>\n		<lastmod>2014-08-25T18:57:03-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/customers/past-performance/</loc>\n		<lastmod>2014-08-25T18:56:08-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/278/</loc>\n		<lastmod>2014-08-26T12:42:22-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.8</priority>\n		<image:image>\n			<image:loc>http://kmdig.com/client/bhdefense/media/footer-logo.png</image:loc>\n			<image:caption><![CDATA[footer logo]]></image:caption>\n		</image:image>\n	</url>\n</urlset>', 'no'),
(607, '_transient_random_seed', '3715262e5a9d59393c00ec9cef0f870a', 'yes'),
(614, '_site_transient_timeout_browser_fc2e298c460561629e1c4ba4140a9266', '1410785037', 'yes'),
(615, '_site_transient_browser_fc2e298c460561629e1c4ba4140a9266', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"37.0.2062.94";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(628, '_transient_timeout_wpseo_sitemap_cache_post_', '1410282213', 'no'),
(629, '_transient_wpseo_sitemap_cache_post_', '<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:image="http://www.google.com/schemas/sitemap-image/1.1" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/news/</loc>\n		<lastmod>2014-09-08T17:03:33-04:00</lastmod>\n		<changefreq>daily</changefreq>\n		<priority>1</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/industry-facts-issues/</loc>\n		<lastmod>2014-09-08T12:48:56-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/multiple-paragraph-post/</loc>\n		<lastmod>2014-09-08T12:48:57-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/image-post/</loc>\n		<lastmod>2014-09-08T12:48:57-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n		<image:image>\n			<image:loc>http://kmdig.com/client/himcloud/wp-content/uploads/2014/07/him-top-300x138.jpg</image:loc>\n			<image:caption><![CDATA[him top]]></image:caption>\n		</image:image>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/ul-and-ol-post/</loc>\n		<lastmod>2014-09-08T12:48:57-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/blockquote-post/</loc>\n		<lastmod>2014-09-08T12:48:57-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/links-post/</loc>\n		<lastmod>2014-09-08T12:48:57-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/headers-post/</loc>\n		<lastmod>2014-09-08T12:48:57-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/secrets-becoming-himcloud-pro/</loc>\n		<lastmod>2014-09-08T12:48:56-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/onsite-vs-offsite-really-matter/</loc>\n		<lastmod>2014-09-08T12:48:56-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/coder-marketplace-blossoms/</loc>\n		<lastmod>2014-09-08T12:48:56-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n	<url>\n		<loc>http://kmdig.com/client/bhdefense/icd-9-break-another-delay/</loc>\n		<lastmod>2014-09-08T12:48:56-04:00</lastmod>\n		<changefreq>weekly</changefreq>\n		<priority>0.6</priority>\n	</url>\n</urlset>', 'no'),
(668, 'rewrite_rules', 'a:71:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(671, '_site_transient_timeout_wpmdb_licence_response', '1410421602', 'yes'),
(672, '_site_transient_wpmdb_licence_response', '{"message":"\\t\\t\\t<p>\\n\\t\\t\\t\\tYou have an active <strong>Developer<\\/strong> license.<br \\/>You may send an email to the following address to get front-of-the-line support service.\\t\\t\\t<\\/p>\\n\\n\\t\\t\\t<p>\\n\\t\\t\\t\\t<strong>Please copy the Diagnostic Info &amp; Error Log info below into a text file and attach it to your email. Do the same for any other site involved in your email.<\\/strong>\\n\\t\\t\\t<\\/p>\\n\\n\\t\\t\\t<p class=\\"email\\">\\n\\t\\t\\t\\t<a class=\\"button\\" href=\\"mailto:priority-wpmdb@deliciousbrains.com\\">priority-wpmdb@deliciousbrains.com<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t","addons_available":"1","addon_list":{"wp-migrate-db-pro-media-files":{"name":"Media Files","desc":"Determines the Media Library files that have been added or updated on the remote site and downloads them. Includes an option to remove local files that are no longer found on the remote site. <a style=\\"color:#fff;text-decoration:underline;\\" href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/documentation\\/#media-files-addon\\" style=\\"\\">More Details &rarr;<\\/a>","version":"1.1.5","beta_version":"","tested":"4.0"},"wp-migrate-db-pro-cli":{"name":"CLI","desc":"Use WP-CLI to run migrations from the command line: <code>wp wpmdb migrate <span class=\\"bracket\\">&lt;<\\/span><span class=\\"var\\">profile<\\/span><span class=\\"bracket\\">&gt;<\\/span><\\/code> or run them from your own code with the <code>wpmdb_migrate<span class=\\"bracket\\">(<\\/span> <span class=\\"var\\">$profile<\\/span> <span class=\\"bracket\\">)<\\/span><\\/code> function. <a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/documentation\\/#cli-addon\\" style=\\"\\">More Details &rarr;<\\/a>","version":"1.0.1","beta_version":"","required":"1.4b1","tested":"4.0"}}}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(673, '_site_transient_timeout_wpmdb_addons', '1415562402', 'yes'),
(674, '_site_transient_wpmdb_addons', 'a:2:{s:29:"wp-migrate-db-pro-media-files";a:5:{s:4:"name";s:11:"Media Files";s:4:"desc";s:359:"Determines the Media Library files that have been added or updated on the remote site and downloads them. Includes an option to remove local files that are no longer found on the remote site. <a style="color:#fff;text-decoration:underline;" href="https://deliciousbrains.com/wp-migrate-db-pro/documentation/#media-files-addon" style="">More Details &rarr;</a>";s:7:"version";s:5:"1.1.5";s:12:"beta_version";s:0:"";s:6:"tested";s:3:"4.0";}s:21:"wp-migrate-db-pro-cli";a:6:{s:4:"name";s:3:"CLI";s:4:"desc";s:466:"Use WP-CLI to run migrations from the command line: <code>wp wpmdb migrate <span class="bracket">&lt;</span><span class="var">profile</span><span class="bracket">&gt;</span></code> or run them from your own code with the <code>wpmdb_migrate<span class="bracket">(</span> <span class="var">$profile</span> <span class="bracket">)</span></code> function. <a href="https://deliciousbrains.com/wp-migrate-db-pro/documentation/#cli-addon" style="">More Details &rarr;</a>";s:7:"version";s:5:"1.0.1";s:12:"beta_version";s:0:"";s:8:"required";s:5:"1.4b1";s:6:"tested";s:3:"4.0";}}', 'yes'),
(675, '_transient_timeout_plugin_slugs', '1410464752', 'no'),
(676, '_transient_plugin_slugs', 'a:25:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:45:"acf-flexible-content/acf-flexible-content.php";i:2;s:29:"acf-repeater/acf-repeater.php";i:3;s:46:"acf-wordpress-wysiwyg-field/acf-wp_wysiwyg.php";i:4;s:34:"advanced-custom-fields-pro/acf.php";i:5;s:19:"akismet/akismet.php";i:6;s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";i:7;s:27:"coming-soon/coming-soon.php";i:8;s:53:"easy-bootstrap-shortcodes/osc_bootstrap_shortcode.php";i:9;s:43:"google-analytics-dashboard-for-wp/gadwp.php";i:10;s:29:"gravityforms/gravityforms.php";i:11;s:35:"gravityformsmailchimp/mailchimp.php";i:12;s:29:"gravityformspaypal/paypal.php";i:13;s:9:"hello.php";i:14;s:31:"i-order-terms/i-order-terms.php";i:15;s:24:"json-rest-api/plugin.php";i:16;s:29:"json-path-resolver/plugin.php";i:17;s:33:"km-shortcodes-bs-3/shortcodes.php";i:18;s:49:"roots-wrapper-override/roots-wrapper-override.php";i:19;s:30:"SGCachePress/sg-cachepress.php";i:20;s:57:"simple-share-buttons-adder/simple-share-buttons-adder.php";i:21;s:41:"wordpress-importer/wordpress-importer.php";i:22;s:24:"wordpress-seo/wp-seo.php";i:23;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";i:24;s:63:"wp-migrate-db-pro-media-files/wp-migrate-db-pro-media-files.php";}', 'no'),
(686, '_transient_timeout_acf_pro_get_remote_info', '1410483745', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(687, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields Pro";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:36:"http://www.advancedcustomfields.com/";s:7:"version";s:5:"5.0.8";s:6:"author";s:13:"elliot condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.5.0";s:6:"tested";s:3:"4.0";s:4:"tags";a:8:{i:0;s:5:"5.0.7";i:1;s:5:"5.0.6";i:2;s:5:"5.0.5";i:3;s:5:"5.0.4";i:4;s:5:"5.0.3";i:5;s:5:"5.0.2";i:6;s:5:"5.0.1";i:7;s:5:"5.0.0";}s:6:"tagged";s:151:"custom, field, custom field, advanced, simple fields, magic fields, more fields, repeater, matrix, post, type, text, textarea, file, image, edit, admin";s:11:"description";s:4347:"<p>Advanced Custom Fields is the perfect solution for any wordpress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text with `<br />` tags)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a wordpress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="http://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="http://www.advancedcustomfields.com/">www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="http://www.advancedcustomfields.com/resources/#getting-started)">www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="http://www.advancedcustomfields.com/resources/#field-types)">www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="http://www.advancedcustomfields.com/resources/#functions)">www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="http://www.advancedcustomfields.com/resources/#actions)">www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="http://www.advancedcustomfields.com/resources/#filters)">www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="http://www.advancedcustomfields.com/resources/#how-to)">www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="http://www.advancedcustomfields.com/resources/#tutorials)">www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu itme "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group\'s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:79731:"<h4> 5.0.8 </h4>\n<ul><li>Checkbox field: Fixed PHP error when editing field default value</li><li>Image field: Added logic to update thumbnail after image has been edited</li><li>Gallery field: Added logic to update thumbnail after image has been edited</li><li>Core: Added compatibility for WP4 media grid</li><li>Core: Fixed Select2 bug where results could not be selected</li><li>Core: Fixed conditional logic bug showing empty cells in the repeater field</li><li>Core: Fixed bug where tabify would show blank field groups</li><li>Core: Minor bug fixes and improvements</li><li>Language: Added Slovakian translation - thanks to wp.sk</li></ul>\n<h4> 5.0.7 </h4>\n<ul><li>Core: Fixed navigation prompt when saving a field group</li><li>Checkbox field: Fixed issue with multiple default values (requires save)</li><li>Tab field: Fixed missing active tabs on page load</li></ul>\n<h4> 5.0.6 </h4>\n<ul><li>Relationship field: Fixed bug preventing values from being removed</li><li>Taxonomy field: Fixed various JS bugs</li><li>Core: Added logic to reset inputs after adding a new taxonomy term</li><li>Core: Added prompt when navigating away from changed data</li><li>Core: Fixed minor validation bug when tab is hidden by conditional logic</li><li>Core: Fixed error when showing revision of sub field data</li><li>Core: Minor bug fixes and improvements</li></ul>\n<h4> 5.0.5 </h4>\n<ul><li>Url field: Added new URL field type with basic <code>http</code> validation</li><li>WYSIWYG field: Added new setting for customizing tabs (Visual / Text)</li><li>Relationship field: Added scrolling pagination to choices</li><li>Post object field: Added scrolling pagination to choices</li><li>Page link field: Added scrolling pagination to choices</li><li>Radio field: Fixed bug causing default value to be lost when added as sub field</li><li>Core: Minor JS improvements</li><li>Core: Added logic to detect if field groups are translatable (WPML setting) before modifying json path</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.0.4 </h4>\n<ul><li>WYSIWYG field: Major improvement adding visual and text tabs</li><li>Image field: Fixed uploadedTo bug on non post edit page</li><li>Tab field: Fixed various JS bugs</li><li>Options page: Fixed bug causing field groups with position setting of <code>High</code> to not appear</li><li>Options page: Added functionality to toggle and save state of postbox</li><li>Core: Fixed nested bug in get_sub_field_object()</li><li>Language: Updated Brazil translation - thanks to André Felipe</li></ul>\n<h4> 5.0.3 </h4>\n<ul><li>Gallery field: Added new edit button within sidebar to launch edit/crop popup</li><li>Gallery field: Changed placement of remove button when sidebar is open</li><li>Gallery field: Added functionality to resize height</li><li>Options page: Fixed default value not working</li><li>Core: Fixed local json issues with WPML</li><li>Core: Allowed local fields and groups to use custom keys (non <code>field_</code>)</li><li>Core: Minor bug fixes</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.0.2 </h4>\n<ul><li>Field group: Fixed bug deleteing fields after they are moved to another group</li><li>Field group: Fixed PHP error preventing redirect after group is duplicated</li><li>Field group: Fixed blank conditional logic UI</li><li>Field group: Fixed taxonomy term location rule not saving</li><li>Image field: Added functionality to edit/crop image within popup</li><li>File field: Added functionality to edit/crop image within popup</li><li>Core: Added toggle checkbox to export field group list</li><li>Core: Fixed logic to include minified scripts and styles</li></ul>\n<h4> 5.0.1 </h4>\n<ul><li>Gallery field: Added auto save when change is detected</li><li>Gallery field: Added logic to better render grid with non cropped image sizes</li><li>Gallery field: Fixed JS error causing attachment data to not save</li><li>Post object field: Fixed empty value being returned for deleted posts</li><li>Taxonomy field: Fixed PHP error in checkbox mode when value is empty</li><li>User field: Fixed PHP error preventing choices from being loaded</li><li>Taxonomy field: Fixed null value returned on front end</li><li>Flexible Content field: Fixed bug preventing layouts without sub fields from loading correctly</li><li>Flexible Content field: Fixed bug preventing layout reorder from saving</li><li>Relationship field: Fixed result elements setting compatibility with ACF4</li><li>Field group: Added logic to remember "Show Field Keys" screen option</li><li>Core: Updated Select2 to v3.5.0</li><li>Core: Added logic to allow values to save on an empty post (no title, content, excerpt)</li><li>Core: Minor bug fixes</li><li>Language: Updated German translation - Thanks to Thomas Meyer</li><li>Language: Updated Hungarian translation - Thanks to Tihanyi Balázs</li></ul>\n<h4> 5.0.0 </h4>\n<ul><li>Overhaul of HTML & CSS</li><li>Migrated field & sub field settings (not values) to post objects instead of postmeta</li><li>Added Select2 JS for AJAX and search functionality on select lists</li><li>Added AJAX search functionality for Post Object, taxonomy, user and select fields</li><li>Added JSON read/write functionality to automatically save field groups to files (saves DB query time)</li><li>Added JSON import/export functionality to replace old XML style</li><li>Aded grouped conditional logic rules</li><li>New location rules allow field groups on comments</li><li>New location rules allow field groups on user (including registration and bbPress)</li><li>New location rules allow field groups on widgets</li><li>New API folder contains a library of functions to use in plugins and themes</li><li>New oembed field for easy iframe embeds</li><li>New Gallery field design</li><li>New field group options for `Label placement` and `Instruction placement` allow for an all new look!</li><li>New PHP + AJAX validation replaces old JS style</li><li>New Relationship field setting for <code>Filters</code> (Search, Post Type, Taxonomy)</li><li>New field group functionality allows you to move a field between groups</li><li>New field group functionality allows you to drag a field between parents (repeater)</li><li>New Add-ons page uses an external JSON file to read in data (easy to add 3rd party fields)</li><li>Huge improvements to core functionality resulting in faster load times!</li><li>New archives group in page_link field selection</li><li>New functions for options page allow creation of both parent and child menu pages</li><li>Date picker field: Removed save_format setting. Values now save as Y:m:d h:i:s</li><li>Date picker field: Added return_format setting</li><li>Textarea field: Added new_lines setting</li><li>Gallery field: Added min and max selection settings</li><li>Select field: Added Stylised UI setting</li><li>Select field: Added Lazy Load AJAX setting</li></ul>\n<h4> 4.3.4 </h4>\n<ul><li>Post Object field: Fixed get_pages bug cuasing <code>pages</code> to not appear</li><li>Page Link field: Fixed get_pages bug cuasing <code>pages</code> to not appear</li><li>Tab field: Fixed JS bug causing multiple tab groups on page to render incorrectly</li><li>Language: Updated Russian translation - Thanks to Alex Torscho</li></ul>\n<h4> 4.3.3 </h4>\n<ul><li>Core: Updated styling to suit WP 3.8</li><li>Core: Added new logic to set <code>autoload</code> to <code>off</code> on all values saved to the wp_options table to help improve load speed</li><li>API: Added new logic to the $post_id parameter to accept an object of type post, user or taxonomy term</li><li>Tab field: Added compatibility with taxonomy term and user edit screens (table layout)</li><li>Tab field: Fixed JS bug causing incorrect tab to show when validation fails</li><li>Text field: Fixed bug causing append setting of <code>+50</code> to appear as <code>50</code></li></ul>\n<h4> 4.3.2 </h4>\n<ul><li>Color Picker field: Fixed JS bug preventing wpColorPicker from updating value correctly</li><li>Google Map field: Added new setting for initial zoom level</li><li>Relationship field: minor update to fix compatibility issue with Polylang plugin</li><li>Relationship field: Fixed bug causing filters / actions using $field[<code>name</code>] to not fire correctly</li><li>API: Fixed bug with have_rows/has_sub_field function where looping through multiple posts each containing nested repeater fields would result in an endless loop</li><li>Export: Fixed bug causing exported XML fields to become corrupt due to line breaks</li><li>Core: Fixed bug where duplicating a field would cause conditional logic to appear blank</li><li>Core: Added Conditional Logic support to hide entire column of a repeater field where max_row is 1.</li><li>Core: Added new field group <code>hide on screen</code> option for <code>permalink</code> which hides the permalink URL and buttons below the post title</li></ul>\n<h4> 4.3.1 </h4>\n<ul><li>API: Fixed bug with has_sub_field and have_rows functions causing complicated nested loops to produce incorrect results</li><li>API: Fixed bug with get_fields function preventing values to be returned from options page and taxonomy terms</li><li>Core: Fixed bug causing some SQL LIKE statements to not work correctly on windows servers</li><li>Core: Removed __() wrappers from PHP export, as these did not work as expected</li><li>Core: Fixed bug with get_pages() causing sort order issue in child page location rule</li><li>Core: Added specific position to ACF menu item to reduce conflicts with 3rd party plugins</li><li>JS: Fixed bug where conditional logic rules did not save when added using a <code>+</code> button above the last rule</li><li>Radio field: Fixed bug where <code>other</code> would be selected when no value exists</li><li>WYSIWYG field: Added support for users with disabled visual editor setting</li><li>JS: Improved validation for fields that are hidden by a tab</li><li>Google maps field: Add refresh action when hidden / shown by a tab</li></ul>\n<h4> 4.3.0 </h4>\n<ul><li>Core: get_field can now be used within the functions.php file</li><li>Core: Added new Google maps field</li><li>Core: Added conditional logic support for sub fields - will also require an update to the repeater / flexible content field add-on to work</li><li>Core: Added required validation support for sub fields - will also require an update to the repeater / flexible content field add-on to work</li><li>API: Added new function have_rows()</li><li>API: Added new function the_row()</li><li>API: Fixed front end form upload issues when editing a user - <a href="http://support.advancedcustomfields.com/forums/topic/repeater-image-upload-failing/">support.advancedcustomfields.com/forums/topic/repeater-image-upload-failing/</a></li><li>API: Fixed front end form bug where the wrong post_id is being passed to JS - <a href="http://support.advancedcustomfields.com/forums/topic/attachments-parent-id/">support.advancedcustomfields.com/forums/topic/attachments-parent-id/</a></li><li>Export: wrapped title and instructions in __() function - <a href="http://support.advancedcustomfields.com/forums/topic/wrap-labels-and-descriptions-with-__-in-the-php-export-file/">support.advancedcustomfields.com/forums/topic/wrap-labels-and-descriptions-with-__-in-the-php-export-file/</a></li><li>Core: Filter out ACF fields from the native custom field dropdown - <a href="http://support.advancedcustomfields.com/forums/topic/meta-key-instead-of-name-on-add-new-custom-field-instead-of-name/">support.advancedcustomfields.com/forums/topic/meta-key-instead-of-name-on-add-new-custom-field-instead-of-name/</a> - <a href="http://support.advancedcustomfields.com/forums/topic/odd-sub-field-names-in-custom-fields/">support.advancedcustomfields.com/forums/topic/odd-sub-field-names-in-custom-fields/</a></li><li>Revisions: Improved save functionality to detect post change when custom fields are edited - <a href="http://support.advancedcustomfields.com/forums/topic/wordpress-3-6-revisions-custom-fields-no-longer-tracked/">support.advancedcustomfields.com/forums/topic/wordpress-3-6-revisions-custom-fields-no-longer-tracked/</a></li><li>Core: Add field group title for user edit screen - <a href="http://support.advancedcustomfields.com/forums/topic/can-you-add-a-title-or-hr-tag-when-using-acf-in-taxonomy-edit-screen/">support.advancedcustomfields.com/forums/topic/can-you-add-a-title-or-hr-tag-when-using-acf-in-taxonomy-edit-screen/</a></li><li>Field group: Add <code>toggle all</code> option to hide from screen - <a href="http://support.advancedcustomfields.com/forums/topic/hidecheck-all-single-checkbox-when-hiding-items-from-pagepost-edit-screen/">support.advancedcustomfields.com/forums/topic/hidecheck-all-single-checkbox-when-hiding-items-from-pagepost-edit-screen/</a></li><li>Taxonomy field: Add new filter for wp_list_categories args - <a href="http://support.advancedcustomfields.com/forums/topic/taxonomy-field-type-filter-to-only-show-parents/">support.advancedcustomfields.com/forums/topic/taxonomy-field-type-filter-to-only-show-parents/</a></li><li>Taxonomy field: Fixed JS bug causing attachment field groups to disappear due to incorrect AJAX location data - <a href="http://support.advancedcustomfields.com/forums/topic/taxonomy-checkboxes/">support.advancedcustomfields.com/forums/topic/taxonomy-checkboxes/</a></li><li>WYSIWYG field: Fixed JS bug where formatting is removed when drag/drop its repeater row</li><li>Tab field: Corrected minor JS bugs with conditional logic - <a href="http://support.advancedcustomfields.com/forums/topic/tabs-logic-hide-issue/">support.advancedcustomfields.com/forums/topic/tabs-logic-hide-issue/</a></li><li>Relationship field: Values now save correctly as an array of strings (for LIKE querying)</li><li>Post object field: Values now save correctly as an array of strings (for LIKE querying)</li><li>Image field: Added mime_type data to returned value</li><li>Field field: Added mime_type data to returned value</li><li>Core: Lots of minor improvements</li></ul>\n<h4> 4.2.2 </h4>\n<ul><li>Field group: Added <code>High (after title)</code> position for a metabox - <a href="http://support.advancedcustomfields.com/forums/topic/position-after-title-solution-inside/">support.advancedcustomfields.com/forums/topic/position-after-title-solution-inside/</a></li><li>Relationship field: Fixed bug with <code>exclude_from_search</code> post types</li><li>Image / File field: Improved edit popup efficiency and fixed bug when <code>upload</code> is last active mode - <a href="http://support.advancedcustomfields.com/forums/topic/edit-image-only-shows-add-new-screen/">support.advancedcustomfields.com/forums/topic/edit-image-only-shows-add-new-screen/</a></li><li>JS: Added un compressed input.js file</li><li>JS: Fixed but with options page / taxonomy field - <a href="http://support.advancedcustomfields.com/forums/topic/checkbox-issues/">support.advancedcustomfields.com/forums/topic/checkbox-issues/</a></li><li>Language: Updated Persian Translation - thanks to Ghaem Omidi</li></ul>\n<h4> 4.2.1 </h4>\n<ul><li>Taxonomy field: Fixed issue causing selected terms to appear as numbers - <a href="http://support.advancedcustomfields.com/forums/topic/latest-update-4-2-0-taxonomy-field-not-working-correctly/">support.advancedcustomfields.com/forums/topic/latest-update-4-2-0-taxonomy-field-not-working-correctly/</a></li><li>Revisions: Fixed WP 3.6 revisions - <a href="http://support.advancedcustomfields.com/forums/topic/wordpress-3-6-revisions-custom-fields-no-longer-tracked/">support.advancedcustomfields.com/forums/topic/wordpress-3-6-revisions-custom-fields-no-longer-tracked/</a></li><li>Relationship Field: Add new option for return_format</li><li>Location Rule - Add new rule for post status - <a href="http://support.advancedcustomfields.com/forums/topic/location-rules-post-status/">support.advancedcustomfields.com/forums/topic/location-rules-post-status/</a></li><li>Location Rule: Add <code>super admin</code> to users rule - thanks to Ryan Nielson - <a href="https://github.com/RyanNielson/acf/commit/191abf35754c242f2ff75ac33ff8a4dca963a6cc">github.com/RyanNielson/acf/commit/191abf35754c242f2ff75ac33ff8a4dca963a6cc</a></li><li>Core: Fixed pre_save_post $post_id issue - <a href="http://support.advancedcustomfields.com/forums/topic/frontend-form-issues-pre_save_post-save_post/">support.advancedcustomfields.com/forums/topic/frontend-form-issues-pre_save_post-save_post/</a></li><li>Core: Fix minor CSS but in media modal - <a href="http://support.advancedcustomfields.com/forums/topic/minor-css-issue-in-media-upload-lightbox/#post-2138">support.advancedcustomfields.com/forums/topic/minor-css-issue-in-media-upload-lightbox/#post-2138</a></li><li>File field: Fix minor <code>strict standards</code> warning - <a href="http://support.advancedcustomfields.com/forums/topic/strict-standards-error-on-file-upload/">support.advancedcustomfields.com/forums/topic/strict-standards-error-on-file-upload/</a></li><li>Image field: Fix minor CSS issue - <a href="http://support.advancedcustomfields.com/forums/topic/firefox-repeaterimage-css/">support.advancedcustomfields.com/forums/topic/firefox-repeaterimage-css/</a></li></ul>\n<h4> 4.2.0 </h4>\n<ul><li>IMPORTANT: ACF now requires a minimum WordPress version of 3.5.0</li><li>Full integration between attachments and custom fields!</li><li>Text field: Added new options for prepend, append, placeholder and character limit</li><li>Textarea field: Added new options for prepend, append, placeholder and character limit</li><li>Number field: Added new options for prepend, append and placeholder</li><li>Email field: Added new options for prepend, append and placeholder</li><li>Password field: Added new options for prepend, append and placeholder</li><li>Image field: fixed safari bug causing all images to appear small</li><li>Core: Improved save_lock functionality to prevent inifinite loops when creating a post on the fly</li><li>Core: Major JS improvements including .live changed to .on</li><li>Compatibility: Fixed WYSIWYG JS bug with Visual Composer plugin</li><li>Language: Added Persian Translation - thanks to Ghaem Omidi</li><li>Language: Updated German translation - thanks to Thomas Meyer</li><li>Language: Added Swedish translation - thanks to Mikael Jorhult</li></ul>\n<h4> 4.1.8.1 </h4>\n<ul><li>Select field: Revert choices logic - <a href="http://support.advancedcustomfields.com/forums/topic/select-field-label-cut-off-at/#post-529">support.advancedcustomfields.com/forums/topic/select-field-label-cut-off-at/#post-529</a></li><li>CSS: Revert metabox CSS - <a href="http://support.advancedcustomfields.com/forums/topic/standard-metabox-margins-reversed/#post-456">support.advancedcustomfields.com/forums/topic/standard-metabox-margins-reversed/#post-456</a></li><li>Core: Fixed save_post conflict with Shopp plugin - <a href="http://support.advancedcustomfields.com/forums/topic/no-data-is-saving-with-shopp-acf-4-1-8/">support.advancedcustomfields.com/forums/topic/no-data-is-saving-with-shopp-acf-4-1-8/</a></li></ul>\n<h4> 4.1.8 </h4>\n<ul><li>Core: Fix issue with cache $found variable preventing values from being loaded</li><li>Select field: Improve choices textarea detection - <a href="http://old.support.advancedcustomfields.com/discussion/6598/select-on-repeater-field">old.support.advancedcustomfields.com/discussion/6598/select-on-repeater-field</a></li><li>Language: Added Swedish translation - <a href="https://github.com/elliotcondon/acf/pull/93">github.com/elliotcondon/acf/pull/93</a></li><li>Language: Updated Russian translation - <a href="https://github.com/elliotcondon/acf/pull/94">github.com/elliotcondon/acf/pull/94</a></li></ul>\n<h4> 4.1.7 </h4>\n<ul><li>Language: Added Russian translation - Thanks to Alex Torscho</li><li>Core: Improved the save_post function to compare post_id and only run once.</li><li>Core: Improved cache handling</li><li>Number field: Fixed step size decimal bug</li><li>Radio button field: Add option for <code>other</code> and to also update field choices</li><li>Image / File field: Updated JS to add multiple items to the correct sub field - <a href="http://support.advancedcustomfields.com/discussion/6391/repeater-with-images-bug">support.advancedcustomfields.com/discussion/6391/repeater-with-images-bug</a></li><li>JS: Remove redundant return ajax value - <a href="http://support.advancedcustomfields.com/discussion/6375/js-syntax-error-in-ie">support.advancedcustomfields.com/discussion/6375/js-syntax-error-in-ie</a></li><li>Add-ons page: fix JS issue - <a href="http://support.advancedcustomfields.com/discussion/6405/add-ons-page-div-height-problem">support.advancedcustomfields.com/discussion/6405/add-ons-page-div-height-problem</a></li><li>Options Page: Fixed issue with load_value preventing the options page using default values - <a href="http://support.advancedcustomfields.com/discussion/4612/true-false-field-allow-default-value">support.advancedcustomfields.com/discussion/4612/true-false-field-allow-default-value</a></li><li>AJAX: Fix chrome bug - untick category - <a href="http://support.advancedcustomfields.com/discussion/6419/disabling-a-category-still-shows-fields">support.advancedcustomfields.com/discussion/6419/disabling-a-category-still-shows-fields</a></li><li>JS: Fixed multiple Internet Explorer issues</li></ul>\n<h4> 4.1.6 </h4>\n<ul><li>General: Improved load_value function to better handle false and default values</li><li>Number field: Added new options for min, max and step - <a href="http://support.advancedcustomfields.com/discussion/6263/fork-on-numbers-field">support.advancedcustomfields.com/discussion/6263/fork-on-numbers-field</a></li><li>Radio field: Improved logic for selecting the value. Now works with 0, false, null and any other <code>empty</code> value - <a href="http://support.advancedcustomfields.com/discussion/6305/radio-button-issue-with-0-values-fix-included-">support.advancedcustomfields.com/discussion/6305/radio-button-issue-with-0-values-fix-included-</a></li><li>Date picker field: Fixed PHP error - <a href="http://support.advancedcustomfields.com/discussion/6312/date-picker-php-error-date_picker-php-line-138-screenshot-attached">support.advancedcustomfields.com/discussion/6312/date-picker-php-error-date_picker-php-line-138-screenshot-attached</a></li><li>Language: Added Portuguese translation - <a href="https://github.com/elliotcondon/acf/pull/64">github.com/elliotcondon/acf/pull/64</a></li><li>Taxonomy: Updated JS to clear image / file and checkbox elements when a new category is added via AJAX - <a href="http://support.advancedcustomfields.com/discussion/6326/image-field-added-to-categories-field-remains-set-after-category-created">support.advancedcustomfields.com/discussion/6326/image-field-added-to-categories-field-remains-set-after-category-created</a></li><li>Validation: Added logic to allow a field to bypass validation if it is part of a tab group which is hidden via conditional logic</li><li>API: Improved the acf_form function to better handle form attributes</li></ul>\n<h4> 4.1.5.1 </h4>\n<ul><li>Image field: Fixed JS error causing uploader to not work correctly</li><li>File field: Fixed JS error causing uploader to not work correctly</li><li>Gallery field: Fixed JS error causing uploader to not work correctly</li><li>General: Fixed JS error causing field groups to not appear when dynamically loaded</li></ul>\n<h4> 4.1.5 </h4>\n<ul><li>WYSIWYG Field: Fixed WYSIWYG the_content / shortcode issues - <a href="http://support.advancedcustomfields.com/discussion/5939/inconsistencies-between-standard-wysiwyg-and-acf-wysiwyg">support.advancedcustomfields.com/discussion/5939/inconsistencies-between-standard-wysiwyg-and-acf-wysiwyg</a></li><li>Image field: Added option for library restriction - <a href="http://support.advancedcustomfields.com/discussion/6102/making-uploaded-to-this-post-default-state-for-image-upload">support.advancedcustomfields.com/discussion/6102/making-uploaded-to-this-post-default-state-for-image-upload</a></li><li>File field: Added option for library restriction</li><li>File field: Field UI refresh</li><li>Checkbox field: Added horizontal option - <a href="http://support.advancedcustomfields.com/discussion/5925/horizontal-select-boxes">support.advancedcustomfields.com/discussion/5925/horizontal-select-boxes</a></li><li>Image field: fixed UI bug when image is deleted in file system - <a href="http://support.advancedcustomfields.com/discussion/5988/provide-a-fallback-if-">support.advancedcustomfields.com/discussion/5988/provide-a-fallback-if-</a></li><li>Validation: Added support for email field - <a href="http://support.advancedcustomfields.com/discussion/6125/email-field-required-validation-on-submit">support.advancedcustomfields.com/discussion/6125/email-field-required-validation-on-submit</a></li><li>Validation: Added support for taxonomy field - <a href="http://support.advancedcustomfields.com/discussion/6169/validation-of-taxonomy-field">support.advancedcustomfields.com/discussion/6169/validation-of-taxonomy-field</a></li><li>Language: Added Chinese Translation - <a href="https://github.com/elliotcondon/acf/pull/63">github.com/elliotcondon/acf/pull/63</a></li><li>General: Added changelog message to update plugin screen</li><li>General: Lots of minor improvements</li></ul>\n<h4> 4.1.4 </h4>\n<ul><li>[Fixed] Page Link: Fixed errors produced by recent changes to post object field - <a href="http://support.advancedcustomfields.com/discussion/6044/page-links-hierarchy-broken-and-does-not-order-correctly">support.advancedcustomfields.com/discussion/6044/page-links-hierarchy-broken-and-does-not-order-correctly</a></li></ul>\n<h4> 4.1.3 </h4>\n<ul><li>[Fixed] Relationship field: Fix global $post conflict issues - <a href="http://support.advancedcustomfields.com/discussion/6022/bug-with-4-1-2-acf-rewrite-global-post">support.advancedcustomfields.com/discussion/6022/bug-with-4-1-2-acf-rewrite-global-post</a></li></ul>\n<h4> 4.1.2 </h4>\n<ul><li>[Added] Post Object field: Add filter to customize choices - <a href="http://support.advancedcustomfields.com/discussion/5883/show-extra-post-info-in-a-post-object-dropdown-list">support.advancedcustomfields.com/discussion/5883/show-extra-post-info-in-a-post-object-dropdown-list</a></li><li>[Fixed] Relationship field: Fix error when used as grand child - <a href="http://support.advancedcustomfields.com/discussion/5898/in_array-errors-on-relationship-field">support.advancedcustomfields.com/discussion/5898/in_array-errors-on-relationship-field</a></li><li>[Added] User field: Add sanitisation into update_value function to allow for array / object with ID attribute</li><li>[Added] Relationship field: Add sanitisation into update_value function to allow for array of post object to be saved</li><li>[Added] Post Object field: Add sanitisation into update_value function to allow for a post object or an array of post objects to be saved</li><li>[Added] Image field: Add sanitisation into update_value function to allow for a post object or an image array to be saved</li><li>[Added] File field: Add sanitisation into update_value function to allow for a post object or an file array to be saved</li><li>[Fixed] Revisions: Fix PHP warning if array value exists as custom field - <a href="http://support.advancedcustomfields.com/discussion/984/solvedwarning-htmlspecialchars-text-php-on-line-109">support.advancedcustomfields.com/discussion/984/solvedwarning-htmlspecialchars-text-php-on-line-109</a></li><li>[Updated] Translation: Update French Translation - <a href="http://support.advancedcustomfields.com/discussion/5927/french-translation-for-4-1-1">support.advancedcustomfields.com/discussion/5927/french-translation-for-4-1-1</a></li><li>[Fixed] General: Minor PHP errors fixed</li></ul>\n<h4> 4.1.1 </h4>\n<ul><li>[Fixed] Relationship field: Fix bug causing sub field to not load $field object / use elements option correctly</li><li>[Updated] Update German translations</li></ul>\n<h4> 4.1.0 </h4>\n<ul><li>[Added] Field group: location rules can now be grouped into AND / OR statements</li><li>[Added] Relationship field: Add option for filters (search / post_type)</li><li>[Added] Relationship field: Add option for elements (featured image / title / post_type)</li><li>[Added] Relationship field: Add post_id and field parameters to both ajax filter functions</li><li>[Added] Date Picker field: Add options for first_day</li><li>[Added] Date Picker field: Add text strings for translation</li><li>[Added] Select field: Add support for multiple default values</li><li>[Added] Checkbox field: Add support for multiple default values - <a href="http://support.advancedcustomfields.com/discussion/5635/checkbox-field-setting-multiple-defaults">support.advancedcustomfields.com/discussion/5635/checkbox-field-setting-multiple-defaults</a></li><li>[Updated] Minor JS + CSS improvements</li><li>[Added] Added free Add-ons to the admin page</li><li>[Fixed] Fixed minor bugs</li></ul>\n<h4> 4.0.3 </h4>\n<ul><li>[Fixed] Fix bug when appending taxonomy terms - <a href="http://support.advancedcustomfields.com/discussion/5522/append-taxonomies">support.advancedcustomfields.com/discussion/5522/append-taxonomies</a></li><li>[Fixed] Fix embed shortcode for WYSIWYG field - <a href="http://support.advancedcustomfields.com/discussion/5503/embed-video-wysiwyg-field-doesn039t-work-since-update">support.advancedcustomfields.com/discussion/5503/embed-video-wysiwyg-field-doesn039t-work-since-update</a></li><li>[Fixed] Fix issues with loading numbers - <a href="http://support.advancedcustomfields.com/discussion/5538/zero-first-number-problem-in-text-fields">support.advancedcustomfields.com/discussion/5538/zero-first-number-problem-in-text-fields</a></li><li>[Fixed] Fix bug with user field and format_value_for_api - <a href="http://support.advancedcustomfields.com/discussion/5542/user-field-weirdness-after-update">support.advancedcustomfields.com/discussion/5542/user-field-weirdness-after-update</a></li><li>[Fixed] Fix capitalization issue on field name - <a href="http://support.advancedcustomfields.com/discussion/5527/field-name-retains-capitalization-from-field-title">support.advancedcustomfields.com/discussion/5527/field-name-retains-capitalization-from-field-title</a></li><li>[Fixed] Fix tabs not hiding from conditional logic - <a href="http://support.advancedcustomfields.com/discussion/5506/conditional-logic-not-working-with-tabs">support.advancedcustomfields.com/discussion/5506/conditional-logic-not-working-with-tabs</a></li><li>[Updated] Update dir / path to allow for SSL - <a href="http://support.advancedcustomfields.com/discussion/5518/in-admin-page-got-error-javascript-when-open-with-https">support.advancedcustomfields.com/discussion/5518/in-admin-page-got-error-javascript-when-open-with-https</a></li><li>[Updated] Updated relationship JS - <a href="http://support.advancedcustomfields.com/discussion/5550/relationship-field-search-box">support.advancedcustomfields.com/discussion/5550/relationship-field-search-box</a></li></ul>\n<h4> 4.0.2 </h4>\n<ul><li>[Added] Add auto video filter to WYSIWYG value - <a href="http://support.advancedcustomfields.com/discussion/5378/video-embed-in-wysiwyg-field">support.advancedcustomfields.com/discussion/5378/video-embed-in-wysiwyg-field</a></li><li>[Fixed] Fix Repeater + WYSIWYG loosing p tags on drag/drop - <a href="http://support.advancedcustomfields.com/discussion/5476/acf-4-0-0-wysiwyg-p-tag-disappearing-after-drag-drop-save">support.advancedcustomfields.com/discussion/5476/acf-4-0-0-wysiwyg-p-tag-disappearing-after-drag-drop-save</a></li><li>[Fixed] Fix upgrade message appearing in iframe</li><li>[Fixed] Fix value sanitation - <a href="http://support.advancedcustomfields.com/discussion/5499/post-relationship-field-value-storage-in-update-to-acf4">support.advancedcustomfields.com/discussion/5499/post-relationship-field-value-storage-in-update-to-acf4</a></li><li>[Added] Add JS field name validation - <a href="http://support.advancedcustomfields.com/discussion/5500/replace-foreign-letters-when-creating-input-name-from-label-in-javascript">support.advancedcustomfields.com/discussion/5500/replace-foreign-letters-when-creating-input-name-from-label-in-javascript</a></li><li>[Fixed] Fix error when duplicating field group in WPML - <a href="http://support.advancedcustomfields.com/discussion/5501/4-0-1-broke-wpml-functionality-">support.advancedcustomfields.com/discussion/5501/4-0-1-broke-wpml-functionality-</a></li><li>[Fixed] Fix pares_type issue. Maybe remove it? - <a href="http://support.advancedcustomfields.com/discussion/5502/zeros-get-removed-major-bug">support.advancedcustomfields.com/discussion/5502/zeros-get-removed-major-bug</a></li></ul>\n<h4> 4.0.1 </h4>\n<ul><li>[Improved] Improving welcome message with download instructions</li><li>[Fixed] Text / Fix JS issue where metaboxes are not hiding - <a href="http://support.advancedcustomfields.com/discussion/5443/bug-content-editor">support.advancedcustomfields.com/discussion/5443/bug-content-editor</a></li><li>[Fixed] Test / Fix lite mode issue causing category / user fields not to show</li><li>[Fixed] Sanitize field names - <a href="http://support.advancedcustomfields.com/discussion/5262/sanitize_title-on-field-name">support.advancedcustomfields.com/discussion/5262/sanitize_title-on-field-name</a></li><li>[Fixed] Test / Fix conditional logic not working for mutli-select - <a href="http://support.advancedcustomfields.com/discussion/5409/conditional-logic-with-multiple-select-field">support.advancedcustomfields.com/discussion/5409/conditional-logic-with-multiple-select-field</a></li><li>[Fixed] Test / Fix field group duplication in WooCommerce category w SEO plugin - <a href="http://support.advancedcustomfields.com/discussion/5440/acf-woocommerce-product-category-taxonomy-bug">support.advancedcustomfields.com/discussion/5440/acf-woocommerce-product-category-taxonomy-bug</a></li></ul>\n<h4> 4.0.0 </h4>\n<ul><li>[IMPORTANT] This update contains major changes to premium and custom field type Add-ons. Please read the [Migrating from v3 to v4 guide](<a href="http://www.advancedcustomfields.com/resources/getting-started/migrating-from-v3-to-v4/)">www.advancedcustomfields.com/resources/getting-started/migrating-from-v3-to-v4/)</a></li><li>[Optimized] Optimize performance by removing heavy class structure and implementing light weight hooks & filters!</li><li>[Changed] Remove all Add-on code from the core plugin and separate into individual plugins with self hosted updates</li><li>[Added] Add field <code>Taxonomy</code></li><li>[Added] Add field <code>User</code></li><li>[Added] Add field <code>Email</code></li><li>[Added] Add field <code>Password</code></li><li>[Added] Add field group title validation</li><li>[Fixed] Fix issue where get_field_object returns the wrong field when using WPML</li><li>[Fixed] Fix duplicate functionality - <a href="http://support.advancedcustomfields.com/discussion/4471/duplicate-fields-in-admin-doesn039t-replicate-repeater-fields">support.advancedcustomfields.com/discussion/4471/duplicate-fields-in-admin-doesn039t-replicate-repeater-fields</a> </li><li>[Added] Add conditional statements to tab field - <a href="http://support.advancedcustomfields.com/discussion/4674/conditional-tabs">support.advancedcustomfields.com/discussion/4674/conditional-tabs</a></li><li>[Fixed] Fix issue with Preview / Draft where preview would not save custom field data - <a href="http://support.advancedcustomfields.com/discussion/4401/cannot-preview-or-schedule-content-to-be-published">support.advancedcustomfields.com/discussion/4401/cannot-preview-or-schedule-content-to-be-published</a></li><li>[Added] Add function get_field_groups()</li><li>[Added] Add function delete_field() - <a href="http://support.advancedcustomfields.com/discussion/4788/deleting-a-field-through-php">support.advancedcustomfields.com/discussion/4788/deleting-a-field-through-php</a></li><li>[Added] Add get_sub_field_object function - <a href="http://support.advancedcustomfields.com/discussion/4991/select-inside-repeaterfield">support.advancedcustomfields.com/discussion/4991/select-inside-repeaterfield</a></li><li>[Added] Add <code>Top Level</code> option to page type location rule</li><li>[Fixed] Fix taxonomy location rule - <a href="http://support.advancedcustomfields.com/discussion/5004/field-group-rules-issue">support.advancedcustomfields.com/discussion/5004/field-group-rules-issue</a></li><li>[Fixed] Fix tab field with conditional logic - <a href="https://github.com/elliotcondon/acf4/issues/14">github.com/elliotcondon/acf4/issues/14</a></li><li>[Fixed] Revert back to original field_key idea. attractive field key\'s cause too many issues with import / export</li><li>[Added] Add message field - <a href="http://support.advancedcustomfields.com/discussion/5263/additional-description-field">support.advancedcustomfields.com/discussion/5263/additional-description-field</a></li><li>[Removed] Removed the_content filter from WYSIWYG field</li></ul>\n<h4> 3.5.8.1 </h4>\n<ul><li>[Fixed] Fix PHP error in text / textarea fields</li></ul>\n<h4> 3.5.8 </h4>\n<ul><li>[Fixed] Fix bug preventing fields to load on user / taxonomy front end form - <a href="http://support.advancedcustomfields.com/discussion/4393/front-end-user-profile-field-form-causes-referenceerror">support.advancedcustomfields.com/discussion/4393/front-end-user-profile-field-form-causes-referenceerror</a></li><li>[Added] Added <code>acf/fields/wysiwyg/toolbars</code> filter to customize WYSIWYG toolbars - <a href="http://support.advancedcustomfields.com/discussion/2205/can-we-change-wysiwyg-basic-editor-buttons">support.advancedcustomfields.com/discussion/2205/can-we-change-wysiwyg-basic-editor-buttons</a></li><li>[Fixed] Fix acf_load_filters as they are not working! - <a href="http://support.advancedcustomfields.com/discussion/comment/12770#Comment_12770">support.advancedcustomfields.com/discussion/comment/12770#Comment_12770</a></li><li>[Added] Clean up wp_options after term delete - <a href="http://support.advancedcustomfields.com/discussion/4396/delete-taxonomy-term-custom-fields-after-term-delete">support.advancedcustomfields.com/discussion/4396/delete-taxonomy-term-custom-fields-after-term-delete</a></li><li>[Fixed] Fix location rule - category / taxonomy on new post - <a href="http://support.advancedcustomfields.com/discussion/3635/show-custom-fields-on-post-adding">support.advancedcustomfields.com/discussion/3635/show-custom-fields-on-post-adding</a></li><li>[Added] Added <code>acf/create_field</code> action for third party usage - docs to come soon</li><li>[Added] Add support for new media uploader in WP 3.5!</li><li>[Fixed] Fix conditional logic error - <a href="http://support.advancedcustomfields.com/discussion/4502/conditional-logic-script-output-causes-events-to-fire-multiple-times">support.advancedcustomfields.com/discussion/4502/conditional-logic-script-output-causes-events-to-fire-multiple-times</a></li><li>[Fixed] Fix Uploader not working on taxonomy edit screens - <a href="http://support.advancedcustomfields.com/discussion/4536/media-upload-button-for-wysiwyg-does-not-work-when-used-on-a-taxonomy-term">support.advancedcustomfields.com/discussion/4536/media-upload-button-for-wysiwyg-does-not-work-when-used-on-a-taxonomy-term</a></li><li>[Added] Add data cleanup after removing a repeater / flexible content row - <a href="http://support.advancedcustomfields.com/discussion/1994/deleting-single-repeater-fields-does-not-remove-entry-from-database">support.advancedcustomfields.com/discussion/1994/deleting-single-repeater-fields-does-not-remove-entry-from-database</a> </li></ul>\n<h4> 3.5.7.2 </h4>\n<ul><li>[Fixed] Fix fields not showing on attachment edit page in WP 3.5 - <a href="http://support.advancedcustomfields.com/discussion/4261/after-upgrading-to-3-5-acf-fields-assigned-to-show-on-attachments-media-edit-are-not-showing">support.advancedcustomfields.com/discussion/4261/after-upgrading-to-3-5-acf-fields-assigned-to-show-on-attachments-media-edit-are-not-showing</a></li><li>[Fixed] Fix sub repeater css bug - <a href="http://support.advancedcustomfields.com/discussion/4361/repeater-add-button-inappropriately-disabled">support.advancedcustomfields.com/discussion/4361/repeater-add-button-inappropriately-disabled</a></li><li>[Fixed] Fix issue where acf_form includes scripts twice - <a href="http://support.advancedcustomfields.com/discussion/4372/afc-repeater-on-front-end">support.advancedcustomfields.com/discussion/4372/afc-repeater-on-front-end</a></li><li>[Fixed] Fix location rule bug with new shopp product - <a href="http://support.advancedcustomfields.com/discussion/4406/shopp-idnew-product-page-doesn039t-have-acf-fields">support.advancedcustomfields.com/discussion/4406/shopp-idnew-product-page-doesn039t-have-acf-fields</a></li><li>[Fixed] Fix location rule bug with taxonomy / post_taxonomy - <a href="http://support.advancedcustomfields.com/discussion/4407/taxonomy-rules-ignored-until-toggling-the-taxonomy">support.advancedcustomfields.com/discussion/4407/taxonomy-rules-ignored-until-toggling-the-taxonomy</a></li></ul>\n<h4> 3.5.7.1 </h4>\n<ul><li>[Fixed] Fix issues with location rules wrongly matching</li></ul>\n<h4> 3.5.7 </h4>\n<ul><li>[Fixed] Fix sub field default value - <a href="http://support.advancedcustomfields.com/discussion/3706/select-field-default-value-not-working">support.advancedcustomfields.com/discussion/3706/select-field-default-value-not-working</a></li><li>[Added] Add filters for custom location rules - <a href="http://support.advancedcustomfields.com/discussion/4285/how-to-retrieve-a-custom-field-within-the-function-php">support.advancedcustomfields.com/discussion/4285/how-to-retrieve-a-custom-field-within-the-function-php</a></li><li>[Fixed] Fix XML import to create unique field ID\'s - <a href="http://support.advancedcustomfields.com/discussion/4328/check-acf_next_field_id-to-avoid-data-corruption">support.advancedcustomfields.com/discussion/4328/check-acf_next_field_id-to-avoid-data-corruption</a></li><li>[Fixed] Fix conditional logic with validation - <a href="http://support.advancedcustomfields.com/discussion/4295/issue-with-conditional-logic-and-obrigatory-fields">support.advancedcustomfields.com/discussion/4295/issue-with-conditional-logic-and-obrigatory-fields</a></li><li>[Fixed] Fix repeater + relationship bug - <a href="http://support.advancedcustomfields.com/discussion/4296/relationship-field-bug">support.advancedcustomfields.com/discussion/4296/relationship-field-bug</a></li></ul>\n<h4> 3.5.6.3 </h4>\n<ul><li>[Fixed] Fix bug with 3.5.6 not showing front end form</li></ul>\n<h4> 3.5.6.2 </h4>\n<ul><li>[Fixed] Fix WYSIWYG webkit browser issues.</li></ul>\n<h4> 3.5.6.1 </h4>\n<ul><li>[Fixed] Fix bug causing field groups to not display on the options page.</li></ul>\n<h4> 3.5.6 </h4>\n<ul><li>[Fixed] Fix content editor double in webkit browser - <a href="http://support.advancedcustomfields.com/discussion/4223/duplicate-editor-box-safari-bug-has-returned">support.advancedcustomfields.com/discussion/4223/duplicate-editor-box-safari-bug-has-returned</a></li><li>[Fixed] Fix bug with post format location rule not working - <a href="http://support.advancedcustomfields.com/discussion/4264/not-recognizing-post-type-formats-following-upgrade-to-version-3-5-5">support.advancedcustomfields.com/discussion/4264/not-recognizing-post-type-formats-following-upgrade-to-version-3-5-5</a></li><li>[Fixed] Fix conditional logic with tabs - <a href="http://support.advancedcustomfields.com/discussion/4201/tabs-and-logical-condition">support.advancedcustomfields.com/discussion/4201/tabs-and-logical-condition</a></li><li>[Fixed] Fix missing icons for conditional logic / menu in older WP</li><li>[Added] Add PHP fix for new lines in field key - <a href="http://support.advancedcustomfields.com/discussion/4087/can039t-add-new-field">support.advancedcustomfields.com/discussion/4087/can039t-add-new-field</a></li></ul>\n<h4> 3.5.5 </h4>\n<ul><li>[Added] Add new Tab field</li><li>[Fixed] Improve WYSIWYG code for better compatibility</li><li>[Fixed] Fix PHP / AJAX error during database update for older versions</li><li>[Fixed] WYSIWYG insert attachment focus bug - <a href="http://support.advancedcustomfields.com/discussion/4076/problem-with-upload-in-wysiwyg-editors-in-combination-with-flexible-content">support.advancedcustomfields.com/discussion/4076/problem-with-upload-in-wysiwyg-editors-in-combination-with-flexible-content</a></li><li>[Fixed] Fix JS coma issues for IE - <a href="http://support.advancedcustomfields.com/discussion/4064/ie-javascript-issues-on-editing-field-group">support.advancedcustomfields.com/discussion/4064/ie-javascript-issues-on-editing-field-group</a></li><li>[Added] Add no cache to relationship field results - <a href="http://support.advancedcustomfields.com/discussion/2325/serious-memory-issue-using-post-objectrelationship-field-with-only-5000-posts">support.advancedcustomfields.com/discussion/2325/serious-memory-issue-using-post-objectrelationship-field-with-only-5000-posts</a></li><li>[Added] Add retina support</li><li>[Fixed] Fix WYSIWYG validation for preview post - <a href="http://support.advancedcustomfields.com/discussion/4055/validation-failing-on-required-wysiwyg-field">support.advancedcustomfields.com/discussion/4055/validation-failing-on-required-wysiwyg-field</a></li><li>[Fixed] Fix undefined index error in field\'s conditional logic - <a href="http://support.advancedcustomfields.com/discussion/4165/undefined-index-notice-on-php-export">support.advancedcustomfields.com/discussion/4165/undefined-index-notice-on-php-export</a></li><li>[Updated] Update post types in field options - <a href="http://support.advancedcustomfields.com/discussion/3656/acf-for-custom-post-type">support.advancedcustomfields.com/discussion/3656/acf-for-custom-post-type</a></li><li>[Added] Add filters to relationship field results</li><li>[Added] Add file name bellow title in popup for selecting a file</li></ul>\n<h4> 3.5.4.1 </h4>\n<ul><li>[Fixed] Fix bug preventing options pages from appearing in the field group\'s location rules</li></ul>\n<h4> 3.5.4 </h4>\n<ul><li>[Added] Add new filter for ACF settings - <a href="http://www.advancedcustomfields.com/docs/filters/acf_settings/">www.advancedcustomfields.com/docs/filters/acf_settings/</a></li><li>[Updated] Updated field keys to look nicer. eg field_12</li><li>[Added] Update admin_head to use hooks / enque all scripts / styles</li><li>[Added] Add duplicate function for flexible content layouts</li><li>[Fixed] Fix $post_id bug - <a href="http://support.advancedcustomfields.com/discussion/3852/acf_form-uses-global-post_id-instead-of-argument">support.advancedcustomfields.com/discussion/3852/acf_form-uses-global-post_id-instead-of-argument</a></li><li>[Fixed] Fix WYSIWYG JS issue - <a href="http://support.advancedcustomfields.com/discussion/3644/flexible-layout-field-reordering-breaks-when-visual-editor-disabled">support.advancedcustomfields.com/discussion/3644/flexible-layout-field-reordering-breaks-when-visual-editor-disabled</a></li><li>[Fixed] Fix Gallery PHP error - <a href="http://support.advancedcustomfields.com/discussion/3856/undefined-index-error-gallery-on-options-page">support.advancedcustomfields.com/discussion/3856/undefined-index-error-gallery-on-options-page</a></li><li>[Added] Add compatibility for Shopp categories - <a href="http://support.advancedcustomfields.com/discussion/3647/custom-fields-not-showing-up-in-shopp-catalog-categories">support.advancedcustomfields.com/discussion/3647/custom-fields-not-showing-up-in-shopp-catalog-categories</a></li><li>[Fixed] Fix "Parent Page" location rule - <a href="http://support.advancedcustomfields.com/discussion/3885/parent-page-type-check">support.advancedcustomfields.com/discussion/3885/parent-page-type-check</a></li><li>[Fixed] Fix options page backwards compatibility - support.advancedcustomfields.com/discussion/3908/acf-options-page-groups-are-not-backward-compatible</li><li>[Fixed] Fix update_field for content - <a href="http://support.advancedcustomfields.com/discussion/3916/add-flexible-layout-row-with-update_field">support.advancedcustomfields.com/discussion/3916/add-flexible-layout-row-with-update_field</a></li><li>[Added] Add new filter for acf_defaults! - <a href="http://support.advancedcustomfields.com/discussion/3947/options-page-plugin-user-capabilites-limitation">support.advancedcustomfields.com/discussion/3947/options-page-plugin-user-capabilites-limitation</a></li><li>[Fixed] Fix gallery detail update after edit - <a href="http://support.advancedcustomfields.com/discussion/3899/gallery-image-attributes-not-updating-after-change">support.advancedcustomfields.com/discussion/3899/gallery-image-attributes-not-updating-after-change</a></li><li>[Fixed] Fix front end uploading issue - <a href="http://support.advancedcustomfields.com/discussion/comment/10502#Comment_10502">support.advancedcustomfields.com/discussion/comment/10502#Comment_10502</a></li></ul>\n<h4> 3.5.3.1 </h4>\n<ul><li>Minor bug fixes for 3.5.3</li></ul>\n<h4> 3.5.3 </h4>\n<ul><li>[Updated] Update / overhaul flexible content field UI</li><li>[Added] Add Show / Hide for flexible content layouts</li><li>[Added] Add column width for flexible content - <a href="http://support.advancedcustomfields.com/discussion/3382/percentage-widths-on-fc-fields">support.advancedcustomfields.com/discussion/3382/percentage-widths-on-fc-fields</a></li><li>[Added] Add instructions for flexible content sub fields</li><li>[Added] Add new parameter to get_field to allow for no formatting - <a href="http://support.advancedcustomfields.com/discussion/3188/update_field-repeater">support.advancedcustomfields.com/discussion/3188/update_field-repeater</a></li><li>[Fixed] Fix compatibility issue with post type switcher plugin - <a href="http://support.advancedcustomfields.com/discussion/3493/field-group-changes-to-post-when-i-save">support.advancedcustomfields.com/discussion/3493/field-group-changes-to-post-when-i-save</a></li><li>[Added] Add new location rules for "Front Page" "Post Page" - <a href="http://support.advancedcustomfields.com/discussion/3485/groups-association-whit-page-slug-instead-of-id">support.advancedcustomfields.com/discussion/3485/groups-association-whit-page-slug-instead-of-id</a></li><li>[Fixed] Fix flexible content + repeater row limit bug - <a href="http://support.advancedcustomfields.com/discussion/3557/repeater-fields-inside-flexible-field-on-backend-not-visible-before-first-savingpublishing">support.advancedcustomfields.com/discussion/3557/repeater-fields-inside-flexible-field-on-backend-not-visible-before-first-savingpublishing</a></li><li>[Added] Add filter "acf_load_value" for values - <a href="http://support.advancedcustomfields.com/discussion/3725/a-filter-for-get_field">support.advancedcustomfields.com/discussion/3725/a-filter-for-get_field</a></li><li>[Fixed] Fix choices backslash issue - <a href="http://support.advancedcustomfields.com/discussion/3796/backslash-simple-quote-bug-in-radio-button-values-fields">support.advancedcustomfields.com/discussion/3796/backslash-simple-quote-bug-in-radio-button-values-fields</a></li><li>[Updated] acf_options_page_title now overrides the menu and title. If your field groups are not showing after update, please re-save them to update the location rules.</li><li>[Updated] Update location rules to show all post types in page / page_parent / post</li><li>[Added] Change all "pre_save_field" functions to "acf_save_field" hooks</li><li>[Improved] Improve general CSS / JS</li></ul>\n<h4> 3.5.2 </h4>\n<ul><li>Security update</li></ul>\n<h4> 3.5.1 </h4>\n<ul><li>[Added] Add Conditional logic for fields (toggle fields are select, checkbox, radio and true / false)</li><li>[Added] More hooks + filters - acf_options_page_title, acf_load_field, acf_update_value - <a href="http://support.advancedcustomfields.com/discussion/3454/more-hooks-filters-ability-for-inheritance">support.advancedcustomfields.com/discussion/3454/more-hooks-filters-ability-for-inheritance</a></li><li>[Removed] Remove public param from post types list - <a href="http://support.advancedcustomfields.com/discussion/3251/fields-on-a-non-public-post-type">support.advancedcustomfields.com/discussion/3251/fields-on-a-non-public-post-type</a></li><li>[Added] Add field group headings into the acf_form function</li><li>[Updated] Update button design to match WP 3.5</li><li>[Fixed] Test / Fix XML export issue - <a href="http://support.advancedcustomfields.com/discussion/3415/can039t-export-xml-since-upgrade-to-3-5-0">support.advancedcustomfields.com/discussion/3415/can039t-export-xml-since-upgrade-to-3-5-0</a></li><li>[Added] Add more options to the "hide on screen" - <a href="http://support.advancedcustomfields.com/discussion/3418/screen-options">support.advancedcustomfields.com/discussion/3418/screen-options</a></li><li>[Added] Add compatibility for Tabify plugin - <a href="http://wordpress.org/support/topic/plugin-tabify-edit-screen-compatibility-with-other-custom-fields-plugins/page/2?replies=36#post-3238051">wordpress.org/support/topic/plugin-tabify-edit-screen-compatibility-with-other-custom-fields-plugins/page/2?replies=36#post-3238051</a></li><li>[Added] Add compatibility for Duplicate Post plugin</li><li>[Added] Add new params to acf_form function - <a href="http://support.advancedcustomfields.com/discussion/3445/issue-with-the-acf_form-array">support.advancedcustomfields.com/discussion/3445/issue-with-the-acf_form-array</a></li><li>[Updated] Increase date picker range to 100</li><li>[Fixed] WYSIWYG looses formatting when its row gets reordered (in a repeater / flexible content field)</li><li>[Fixed] Fix has_sub_field break issue - <a href="http://support.advancedcustomfields.com/discussion/3528/ability-to-reset-has_sub_field">support.advancedcustomfields.com/discussion/3528/ability-to-reset-has_sub_field</a></li><li>[Fixed] Fix Textarea / Text encoding bugs - <a href="http://support.advancedcustomfields.com/discussion/comment/5147#Comment_5147">support.advancedcustomfields.com/discussion/comment/5147#Comment_5147</a></li><li>[Added] Add publish status for field groups - <a href="http://support.advancedcustomfields.com/discussion/3695/draft-status-for-field-groups">support.advancedcustomfields.com/discussion/3695/draft-status-for-field-groups</a></li><li>[Updated] General tidy up & improvement of HTML / CSS / Javascript</li></ul>\n<h4> 3.5.0 </h4>\n<ul><li>[Fixed] Fix missing title of PHP registered field groups on the media edit page</li><li>[Added] Add revision support</li><li>[Added] Allow save draft to bypass validation</li><li>[Updated] Update Czech translation</li><li>[Fixed] Fix XML export issue with line break - <a href="http://support.advancedcustomfields.com/discussion/3219/export-and-import-problem-mixed-line-endings">support.advancedcustomfields.com/discussion/3219/export-and-import-problem-mixed-line-endings</a></li><li>[Fixed] Fix export to XML abspath issue - <a href="http://support.advancedcustomfields.com/discussion/2641/require-paths-in-export-php">support.advancedcustomfields.com/discussion/2641/require-paths-in-export-php</a></li><li>Update location rules for post_type - <a href="http://support.advancedcustomfields.com/discussion/3251/fields-on-a-non-public-post-type">support.advancedcustomfields.com/discussion/3251/fields-on-a-non-public-post-type</a> </li><li>Add "revisions" to list of hide-able options</li><li>[Fixed] Fix bug with custom post_id param in acf_form - <a href="http://support.advancedcustomfields.com/discussion/2991/acf_form-outside-loop">support.advancedcustomfields.com/discussion/2991/acf_form-outside-loop</a></li><li>[Fixed] Fix bug in has_sub_field function where new values are not loaded for different posts if the field name is the same - <a href="http://support.advancedcustomfields.com/discussion/3331/repeater-field-templating-help-categories">support.advancedcustomfields.com/discussion/3331/repeater-field-templating-help-categories</a></li><li>[Updated] Allow get_field to use field_key or field_name</li><li>[Fixed] Fix update_field bug with nested repeaters</li><li>[Updated] Update German translation files - thanks to Martin Lettner</li></ul>\n<h4> 3.4.3 </h4>\n<ul><li>[Fixed] Fix PHP registered field groups not showing via AJAX - <a href="http://support.advancedcustomfields.com/discussion/3143/exported-php-code-doesnt-work-with-post-formats">support.advancedcustomfields.com/discussion/3143/exported-php-code-doesnt-work-with-post-formats</a></li><li>[Added] Add new return value for file { file object</li><li>[Fixed] Test / Fix save_post priority with WPML + events + shopp plugin</li><li>[Fixed] Fix bug where field groups don\'t appear on shopp product edit screens</li><li>[Fixed] Fix bug with image field { selecting multiple images puts first image into the .row-clone tr - <a href="http://support.advancedcustomfields.com/discussion/3157/image-field-repeater">support.advancedcustomfields.com/discussion/3157/image-field-repeater</a></li></ul>\n<h4> 3.4.2 </h4>\n<ul><li>[Fixed] Fix API functions for <code>user_$ID</code> post ID parameter</li><li>[Added] Color Picker Field: Default Value</li><li>[Added] Add custom save action for all saves - <a href="http://support.advancedcustomfields.com/discussion/2954/hook-on-save-options">support.advancedcustomfields.com/discussion/2954/hook-on-save-options</a></li><li>[Updated] Update Dutch translations</li><li>[Updated] Update get_field_object function to allow for field_key / field_name + option to load_value</li></ul>\n<h4> 3.4.1 </h4>\n<ul><li>[Added] Save user fields into wp_usermeta <a href="http://support.advancedcustomfields.com/discussion/2758/get_users-and-meta_key">support.advancedcustomfields.com/discussion/2758/get_users-and-meta_key</a></li><li>[Added] Add compatibility with media tags plugin - <a href="http://support.advancedcustomfields.com/discussion/comment/7596#Comment_7596">support.advancedcustomfields.com/discussion/comment/7596#Comment_7596</a></li><li>[Added] Wysiwyg Field: Add Default value option</li><li>[Added] Number Field: Add Default value option</li><li>[Fixed] Validate relationship posts - <a href="http://support.advancedcustomfields.com/discussion/3033/relationship-field-throws-error-when-related-item-is-trashed">support.advancedcustomfields.com/discussion/3033/relationship-field-throws-error-when-related-item-is-trashed</a></li><li>[Added] Allow "options" as post_id for get_fields - <a href="http://support.advancedcustomfields.com/discussion/1926/3-1-8-broke-get_fields-for-options">support.advancedcustomfields.com/discussion/1926/3-1-8-broke-get_fields-for-options</a></li><li>[Added] Repeater Field: Add sub field width option</li><li>[Added] Repeater Field: Add sub field description option</li><li>[Updated] Repeater Field: Update UI design</li><li>[Fixed] Fix missing ajax event on page parent - <a href="http://support.advancedcustomfields.com/discussion/3060/show-correct-box-based-on-page-parent">support.advancedcustomfields.com/discussion/3060/show-correct-box-based-on-page-parent</a></li><li>[Updated] Update french translation - <a href="http://support.advancedcustomfields.com/discussion/3088/french-translation-for-3-4-0">support.advancedcustomfields.com/discussion/3088/french-translation-for-3-4-0</a></li></ul>\n<h4> 3.4.0 </h4>\n<ul><li>[Fixed] Fix validation rules for multiple select - <a href="http://support.advancedcustomfields.com/discussion/2858/multiple-select-validation-doesnt-work">support.advancedcustomfields.com/discussion/2858/multiple-select-validation-doesnt-work</a></li><li>[Added] Add support for options page toggle open / close metabox</li><li>[Fixed] Fix special characters in registered options page - <a href="http://support.advancedcustomfields.com/discussion/comment/7500#Comment_7500">support.advancedcustomfields.com/discussion/comment/7500#Comment_7500</a></li><li>[Updated] CSS tweak for relationship field - <a href="http://support.advancedcustomfields.com/discussion/2877/relation-field-with-multiple-post-types-css-styling-problem-">support.advancedcustomfields.com/discussion/2877/relation-field-with-multiple-post-types-css-styling-problem-</a></li><li>[Fixed] Fix datepicker blank option bug - <a href="http://support.advancedcustomfields.com/discussion/2896/3-3-9-date-picker-not-popping-up">support.advancedcustomfields.com/discussion/2896/3-3-9-date-picker-not-popping-up</a></li><li>[Added] Add new function get_field_object to API - <a href="http://support.advancedcustomfields.com/discussion/290/field-label-on-frontend">support.advancedcustomfields.com/discussion/290/field-label-on-frontend</a></li><li>[Fixed] Fix field groups not showing for Shopp add new product - <a href="http://support.advancedcustomfields.com/discussion/3005/acf-shopp">support.advancedcustomfields.com/discussion/3005/acf-shopp</a></li><li>[Fixed] Move acf.data outside of the doc.ready in input-ajax.js</li><li>[Fixed] Fix IE7 JS bug - <a href="http://support.advancedcustomfields.com/discussion/3020/ie7-fix-on-is_clone_field-function">support.advancedcustomfields.com/discussion/3020/ie7-fix-on-is_clone_field-function</a></li><li>[Fixed] Fix relationship search - Only search title, not content</li><li>[Updated] Update function update_field to use field_key or field_name</li><li>[Added] Add field group screen option to show field keys (to use in save_field / update field)</li><li>[Added] Add actions on all save events (action is called "acf_save_post", 1 param = $post_id)</li></ul>\n<h4> 3.3.9 </h4>\n<ul><li>[Added] Add basic support for WPML - duplicate field groups, pages and posts for each language without corrupting ACF data!</li><li>[Fixed] Fix date picker save null - <a href="http://support.advancedcustomfields.com/discussion/2844/bug-with-the-date-picker">support.advancedcustomfields.com/discussion/2844/bug-with-the-date-picker</a></li><li>[Fixed] Fix color picker save null - <a href="http://support.advancedcustomfields.com/discussion/2683/allow-null-on-colour-pickers#Item_1">support.advancedcustomfields.com/discussion/2683/allow-null-on-colour-pickers#Item_1</a></li><li>[Fixed] Fix image object null result - <a href="http://support.advancedcustomfields.com/discussion/2852/3.3.8-image-field-image-object-always-returns-true-">support.advancedcustomfields.com/discussion/2852/3.3.8-image-field-image-object-always-returns-true-</a></li><li>[Updated] Update Japanese translation - <a href="http://support.advancedcustomfields.com/discussion/comment/7384#Comment_7384">support.advancedcustomfields.com/discussion/comment/7384#Comment_7384</a></li><li>[Added] WYSIWYG field option - disable "the_content" filter to allow for compatibility issues with plugins / themes - <a href="http://support.advancedcustomfields.com/discussion/comment/7020#Comment_7020">support.advancedcustomfields.com/discussion/comment/7020#Comment_7020</a></li></ul>\n<h4> 3.3.8 </h4>\n<ul><li>[Added] Gallery field { auto add image on upload, new style to show already added images</li><li>[Fixed] Fix saving value issue with WP e-commerce <a href="http://support.advancedcustomfields.com/discussion/comment/7026#Comment_7026">support.advancedcustomfields.com/discussion/comment/7026#Comment_7026</a></li><li>[Updated] Date picker field { new display format option (different from save format), UI overhaul</li><li>[Added] Add new field - Number</li><li>[Fixed] Test post object / select based fields for saving empty value - <a href="http://support.advancedcustomfields.com/discussion/2759/post-object-and-conditional-statement">support.advancedcustomfields.com/discussion/2759/post-object-and-conditional-statement</a></li></ul>\n<h4> 3.3.7 </h4>\n<ul><li>[Added] Add new return value for image { image object</li><li>[Updated] Update Dutch translation (thanks to Derk Oosterveld - <a href="http://www.inpoint.nl)">www.inpoint.nl)</a></li><li>[Updated] Update UI Styles</li><li>[Updated] Refresh settings page UI and fix exported PHP code indentation Styles</li><li>[Fixed] Fix post object hierarchy display bug - <a href="http://support.advancedcustomfields.com/discussion/2650/post_object-showing-posts-in-wrong-hierarchy">support.advancedcustomfields.com/discussion/2650/post_object-showing-posts-in-wrong-hierarchy</a></li><li>[Fixed] Fix metabox position from high to core - <a href="http://support.advancedcustomfields.com/discussion/comment/6846#Comment_6846">support.advancedcustomfields.com/discussion/comment/6846#Comment_6846</a></li><li>[Fixed] Fix flexible content field save layout with no fields - <a href="http://support.advancedcustomfields.com/discussion/2639/flexible-content-field-support-for-empty-layoutss">support.advancedcustomfields.com/discussion/2639/flexible-content-field-support-for-empty-layoutss</a></li><li>[Fixed] Text / Fix field group limit - <a href="http://support.advancedcustomfields.com/discussion/2675/admin-only-showing-20-fields-groups">support.advancedcustomfields.com/discussion/2675/admin-only-showing-20-fields-groups</a></li></ul>\n<h4> 3.3.6 </h4>\n<ul><li>[Fixed] Fix IE regex issue (thanks to Ben Heller - <a href="http://spruce.it)">spruce.it)</a></li><li>[Added] Check for more translatable strings (thanks to Derk Oosterveld - <a href="http://www.inpoint.nl)">www.inpoint.nl)</a></li><li>[Fixed] Fix location rule post category bug</li><li>[Updated] Added all post status to page / post location rules - <a href="http://support.advancedcustomfields.com/discussion/2624/scheduled-pages">support.advancedcustomfields.com/discussion/2624/scheduled-pages</a></li><li>[Updated] Updated the page link field to rely on the post_object field</li><li>[Added] Add $post_id parameter to the [acf] shortcode</li></ul>\n<h4> 3.3.5 </h4>\n<ul><li>[Fixed] Fix location rule bug for taxonomy.</li></ul>\n<h4> 3.3.4 </h4> \n<ul><li>[Added] Added new API function: has_sub_field - replacement for the_repeater_field and the_flexible_field. Allows for nested while loops! </li><li>[Improved] Improve save_post functions- <a href="http://support.advancedcustomfields.com/discussion/2540/bug-fix-for-taxonomies-and-revisions-solved">support.advancedcustomfields.com/discussion/2540/bug-fix-for-taxonomies-and-revisions-solved</a></li><li>[Fixed] Fix relationship AJAX abort for multiple fields - <a href="http://support.advancedcustomfields.com/discussion/2555/problem-width-relationship-after-update-the-latest-version">support.advancedcustomfields.com/discussion/2555/problem-width-relationship-after-update-the-latest-version</a></li></ul>\n<h4> 3.3.3 </h4>\n<ul><li>[Upgrade] Database Upgrade is required to modify the taxonomy filtering data for fields. This allows for performance boosts throughout ACF.</li><li>[Improved] relationship field: Improve querying posts / results and use AJAX powered search to increase performance on large-scale websites</li><li>[Improved] post object field: Improve querying posts / results</li></ul>\n<h4> 3.3.2 </h4>\n<ul><li>[Fixed] Integrate with Shopp plugin</li></ul>\n<h4> 3.3.1 </h4>\n<ul><li>[Fixed] Fix gallery sortable in repeater - <a href="http://support.advancedcustomfields.com/discussion/2463/gallery-within-a-repeater-image-reorder-not-working">support.advancedcustomfields.com/discussion/2463/gallery-within-a-repeater-image-reorder-not-working</a></li><li>[Fixed] Test / Fix two gallery fields - <a href="http://support.advancedcustomfields.com/discussion/2467/gallery-two-gallery-fieldss">support.advancedcustomfields.com/discussion/2467/gallery-two-gallery-fieldss</a></li><li>[Fixed] Fix tinymce undefined visual editor off - <a href="http://support.advancedcustomfields.com/discussion/2465/solved-admin-conflicts-after-upgrade">support.advancedcustomfields.com/discussion/2465/solved-admin-conflicts-after-upgrade</a></li><li>[Updated] Update Polish translation - Thanks to <a href="http://www.digitalfactory.pl">www.digitalfactory.pl</a></li></ul>\n<h4> 3.3.0 </h4>\n<ul><li>[Fixed] Gallery not returning correct order</li></ul>\n<h4> 3.2.9 </h4>\n<ul><li>[Added] Add new Gallery Field</li><li>[Fixed] Test / Fix update_field on repeater / flexible content</li><li>[Fixed] Fix regex JS issue with adding nested repeaters</li><li>[Added] Add new Czech translation - Thanks to Webees ( <a href="http://www.webees.cz/">www.webees.cz/</a> )</li></ul>\n<h4> 3.2.8 </h4>\n<ul><li>[Added] Repeater - Add option for min rows + max rows - <a href="http://www.advancedcustomfields.com/support/discussion/2111/repeater-empty-conditional-statements#Item_4">www.advancedcustomfields.com/support/discussion/2111/repeater-empty-conditional-statements#Item_4</a></li><li>[Fixed] Test / Fix Chrome Double WYSIWYG. Again...</li><li>[Added] Add "future" to post status options - <a href="http://advancedcustomfields.com/support/discussion/1975/changed-line-81-and-94-of-corefieldspost_object-to-show-future-entries">advancedcustomfields.com/support/discussion/1975/changed-line-81-and-94-of-corefieldspost_object-to-show-future-entries</a></li><li>[Added] Make image sizes strings "Pretty" for preview size options</li><li>[Fixed] Test / Fix WYSIWYG insert image inside a repeater bug - <a href="http://www.advancedcustomfields.com/support/discussion/2404/problem-with-repeater-wysiwyg-fields-and-images">www.advancedcustomfields.com/support/discussion/2404/problem-with-repeater-wysiwyg-fields-and-images</a></li></ul>\n<h4> 3.2.7 </h4>\n<ul><li>[Fixed] Rename controller classes - <a href="http://www.advancedcustomfields.com/support/discussion/2363/fatal-error-after-update-to-3.2.6">www.advancedcustomfields.com/support/discussion/2363/fatal-error-after-update-to-3.2.6</a></li><li>[Added] Add edit button to image / file fields</li><li>[Fixed] WYSIWYG toolbar buttons dissapearing in HTML tab mode</li></ul>\n<h4> 3.2.6 </h4>\n<ul><li>[Fixed] Fix flexible content inside repeater add extra row jquery bug - <a href="http://www.advancedcustomfields.com/support/discussion/2134/add-flexible-content-button-in-repeater-field-adds-new-repeater-row">www.advancedcustomfields.com/support/discussion/2134/add-flexible-content-button-in-repeater-field-adds-new-repeater-row</a></li><li>[Added] Add suppress_filters to relationship field for WPML compatibility - <a href="http://www.advancedcustomfields.com/support/discussion/comment/5401#Comment_5401">www.advancedcustomfields.com/support/discussion/comment/5401#Comment_5401</a></li><li>[Added] Add new German translation - <a href="http://www.advancedcustomfields.com/support/discussion/2197/german-translation">www.advancedcustomfields.com/support/discussion/2197/german-translation</a></li><li>[Added] Add new Italian translation - Alessandro Mignogna (<a href="http://www.asernet.it)">www.asernet.it)</a></li><li>[Added] Add new Japanese translation - <a href="http://www.advancedcustomfields.com/support/discussion/2219/japanese-translation">www.advancedcustomfields.com/support/discussion/2219/japanese-translation</a></li><li>[Fixed] Test / Fix WYSIWYG removing p tags - <a href="http://www.advancedcustomfields.com/support/discussion/comment/5482#Comment_5482">www.advancedcustomfields.com/support/discussion/comment/5482#Comment_5482</a></li><li>[Added] edit basic toolbar buttons to match WP teeny mode - WYSIWYG</li><li>[Fixed] Test front end form hiding - <a href="http://www.advancedcustomfields.com/support/discussion/2226/frontend-form-disppears-on-acf-3.2.5">www.advancedcustomfields.com/support/discussion/2226/frontend-form-disppears-on-acf-3.2.5</a></li><li>[Fixed] Test saving user custom fields - <a href="http://www.advancedcustomfields.com/support/discussion/2231/custom-fields-not-saving-data-on-initial-user-registration">www.advancedcustomfields.com/support/discussion/2231/custom-fields-not-saving-data-on-initial-user-registration</a></li><li>[Fixed] Fix options page translation bug - <a href="http://www.advancedcustomfields.com/support/discussion/2098/change-language-and-options-page-fields-disappear">www.advancedcustomfields.com/support/discussion/2098/change-language-and-options-page-fields-disappear</a></li><li>[Fixed] Pages rule not returning private pages - <a href="http://www.advancedcustomfields.com/support/discussion/2275/attach-field-group-to-privately-published-pages">www.advancedcustomfields.com/support/discussion/2275/attach-field-group-to-privately-published-pages</a></li><li>[Added] Add custom add_image_size() Image field preview sizes - <a href="http://www.advancedcustomfields.com/support/discussion/comment/5800#Comment_5800">www.advancedcustomfields.com/support/discussion/comment/5800#Comment_5800</a></li></ul>\n<h4> 3.2.5 </h4>\n<ul><li>[IMPORTANT] Change field group option "Show on page" to "Hide on Screen" to allow for future proof adding new elements to list. Previously exported and registered field groups via PHP will still work as expected! This change will prompt you for a database upgrade.</li><li>[Added] Add in edit button to upload image / file thickbox</li><li>[Improved] Changed loading default values. Now behaves as expected!</li><li>[Fixed] Test / Fix full screen mode dissapearing from editor - <a href="http://www.advancedcustomfields.com/support/discussion/2124/full-screen-button-for-zen-mode-is-gone">www.advancedcustomfields.com/support/discussion/2124/full-screen-button-for-zen-mode-is-gone</a></li><li>[Fixed] get_field returning false for 0 - <a href="http://advancedcustomfields.com/support/discussion/2115/get_field-returns-false-if-field-has-value-0">advancedcustomfields.com/support/discussion/2115/get_field-returns-false-if-field-has-value-0</a></li><li>[Improved] Improve relationship sortable code with item param - <a href="http://www.advancedcustomfields.com/support/discussion/comment/3536#Comment_3536">www.advancedcustomfields.com/support/discussion/comment/3536#Comment_3536</a></li><li>[Fixed] IE category js bug - <a href="http://www.advancedcustomfields.com/support/discussion/2127/ie-78-category-checkbox-bug">www.advancedcustomfields.com/support/discussion/2127/ie-78-category-checkbox-bug</a></li><li>[Fixed] Flexible content field row css bug - <a href="http://www.advancedcustomfields.com/support/discussion/2126/space-between-fields-is-a-little-tight-in-3.2.33.2.4">www.advancedcustomfields.com/support/discussion/2126/space-between-fields-is-a-little-tight-in-3.2.33.2.4</a></li><li>[Fixed] Repeater row limit in flexible field bug - <a href="http://www.advancedcustomfields.com/support/discussion/1635/repeater-with-row-limit-of-1-inside-flexible-field-no-rows-show">www.advancedcustomfields.com/support/discussion/1635/repeater-with-row-limit-of-1-inside-flexible-field-no-rows-show</a></li><li>[Fixed] Fix update message - appears on first activation</li><li>[Fixed] Fix options page sidebar drag area - no border needed</li><li>[Fixed] Fix export options page activation - <a href="http://www.advancedcustomfields.com/support/discussion/2112/options-page-not-working-in-functions.php">www.advancedcustomfields.com/support/discussion/2112/options-page-not-working-in-functions.php</a></li></ul>\n<h4> 3.2.4 </h4>\n<ul><li>[Fixed] Remove translation from validation class - <a href="http://www.advancedcustomfields.com/support/discussion/2110/custom-validation-broken-in-other-languages">www.advancedcustomfields.com/support/discussion/2110/custom-validation-broken-in-other-languages</a></li><li>[Fixed] Test fix WYSIWYG insert media issues</li><li>[Added] Add Excerpt to the field group "show on page" options</li></ul>\n<h4> 3.2.3 </h4>\n<ul><li>[Fixed] Include Wysiwyg scripts / styles through the editor class</li><li>[Fixed] Wysiwyg in repeater not working</li><li>[Fixed] Remove Swedish translation until string / js bugs are fixed</li><li>[Fixed] Checkbox  array value issue: <a href="http://wordpress.org/support/topic/plugin-advanced-custom-fields-php-warning-in-corefieldscheckboxphp?replies=6">wordpress.org/support/topic/plugin-advanced-custom-fields-php-warning-in-corefieldscheckboxphp?replies=6</a></li><li>[Added] Add inherit to relationship posts query - <a href="http://www.advancedcustomfields.com/support/discussion/comment/3826#Comment_3826">www.advancedcustomfields.com/support/discussion/comment/3826#Comment_3826</a></li><li>[Fixed] Relationship shows deleted posts - <a href="http://www.advancedcustomfields.com/support/discussion/2080/strange-behavior-of-relationship-field-trash-posts">www.advancedcustomfields.com/support/discussion/2080/strange-behavior-of-relationship-field-trash-posts</a></li><li>[Fixed] Wysiwyg editor not working on taxonomy edit page </li></ul>\n<h4> 3.2.2 </h4>\n<ul><li>[Fixed] Fix layout bug: Nested repeaters of different layouts</li><li>[Fixed] Fix strip slashes bug</li><li>[Fixed] Fix nested repeater bug - <a href="http://www.advancedcustomfields.com/support/discussion/2068/latest-update-broken-editing-environment-">www.advancedcustomfields.com/support/discussion/2068/latest-update-broken-editing-environment-</a></li><li>[Fixed] Test / Fix add multiple images to repeater</li></ul>\n<h4> 3.2.1 </h4>\n<ul><li>Field groups can now be added to options page with layout "side"</li><li>Fixed debug error when saving a taxonomy:</li><li>Fixed unnecessary code: Remove Strip Slashes on save functions</li><li>Added new add row buttons to the repeater field and upgraded the css / js</li><li>Fixed debug error caused by the WYSIWYG field: wp_tiny_mce is deprecated since version 3.3! Use wp_editor() instead.</li><li>Fixed duplicate field error where all sub fields became repeater fields.</li><li>Add Swedish translation: <a href="http://advancedcustomfields.com/support/discussion/1993/swedish-translation">advancedcustomfields.com/support/discussion/1993/swedish-translation</a></li><li>CSS improvements</li><li>Fixed IE9 Bug not returning an image preview on upload / select</li><li>Fixed Multi export php syntax bug.</li></ul>\n<h4> 3.2.0 </h4>\n<ul><li>Fixed Browser bug with Flexible Field: Add Row button works again</li><li>Added Brazilian Translation. Thanks to Marcelo Paoli Graciano - <a href="http://www.paolidesign.com.br">www.paolidesign.com.br</a></li><li>Reverted input CSS to separate field label / instructions onto new lines.</li></ul>\n<h4> 3.1.9 </h4>\n<ul><li>Updated Images / JS - Please hard refresh your browser to clear your cache</li><li>Remove caching from acf_field_groups, replace with temp cache</li><li>Add "Duplicate Field" on field group edit page</li><li>Fix link to documentation on field group edit page</li><li>add "update_value" to API</li><li>Include new Polish translation</li><li>Create a nicer style for flexible content</li><li>Create a nicer style for repeater fields with row layout</li><li>Create a nicer style for "no metabox" fields</li><li>Add Spanish translation. Thanks to @hectorgarrofe</li><li>Fix css for options page no metabox</li><li>Added custom post_updated_messages</li><li>Changed "Drag and drop to reorder" from an image to a string for translation</li></ul>\n<h4> 3.1.8 </h4>\n<ul><li>Options page fields now save their data in the wp_options table. This will require a "Database Upgrade" when you update ACF. This upgrade will move your Options page data from the postmeta table to the options table.</li><li>Added _e() and __() functions to more text throughout plugin</li><li>Added new French translation. Thanks to Martin Vauchel @littlbr <a href="http://littleboyrunning.com">littleboyrunning.com</a></li><li>Fixed duplicate WYSIWYG in chrome bug</li><li>New Location rules: add fields to a user / taxonomy / attachment</li><li>Bug Fix: Color picker now shows color on page load. Thanks to Kev <a href="http://www.popcreative.co.uk">www.popcreative.co.uk</a></li><li>CSS tweaks File clearfix, new style for selects with optgroups</li><li>Simplified get_value to return default value if value </li></ul>\n";s:14:"upgrade_notice";s:145:"<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(688, '_site_transient_timeout_wpmdb_upgrade_data', '1410483746', 'yes'),
(689, '_site_transient_wpmdb_upgrade_data', 'a:3:{s:17:"wp-migrate-db-pro";a:2:{s:7:"version";s:5:"1.4.2";s:6:"tested";s:3:"4.0";}s:29:"wp-migrate-db-pro-media-files";a:2:{s:7:"version";s:5:"1.1.5";s:6:"tested";s:3:"4.0";}s:21:"wp-migrate-db-pro-cli";a:2:{s:7:"version";s:5:"1.0.1";s:6:"tested";s:3:"4.0";}}', 'yes'),
(692, '_site_transient_timeout_theme_roots', '1410449152', 'yes'),
(693, '_site_transient_theme_roots', 'a:2:{s:2:"bh";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";}', 'yes'),
(694, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1410447355;s:7:"checked";a:2:{s:2:"bh";s:3:"0.1";s:14:"twentyfourteen";s:3:"1.1";}s:8:"response";a:1:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentyfourteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentyfourteen.1.2.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(695, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1410447354;s:8:"response";a:2:{s:53:"easy-bootstrap-shortcodes/osc_bootstrap_shortcode.php";O:8:"stdClass":6:{s:2:"id";s:5:"43966";s:4:"slug";s:25:"easy-bootstrap-shortcodes";s:6:"plugin";s:53:"easy-bootstrap-shortcodes/osc_bootstrap_shortcode.php";s:11:"new_version";s:5:"4.3.3";s:3:"url";s:56:"https://wordpress.org/plugins/easy-bootstrap-shortcodes/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/easy-bootstrap-shortcodes.4.0.0.zip";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wordpress-seo.1.6.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:10:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.3.8";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.2.zip";}s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";O:8:"stdClass":6:{s:2:"id";s:5:"47122";s:4:"slug";s:22:"bootstrap-3-shortcodes";s:6:"plugin";s:47:"bootstrap-3-shortcodes/bootstrap-shortcodes.php";s:11:"new_version";s:5:"3.2.3";s:3:"url";s:53:"https://wordpress.org/plugins/bootstrap-3-shortcodes/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/bootstrap-3-shortcodes.3.2.3.zip";}s:27:"coming-soon/coming-soon.php";O:8:"stdClass":6:{s:2:"id";s:5:"47216";s:4:"slug";s:11:"coming-soon";s:6:"plugin";s:27:"coming-soon/coming-soon.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:42:"https://wordpress.org/plugins/coming-soon/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/coming-soon.4.0.3.zip";}s:43:"google-analytics-dashboard-for-wp/gadwp.php";O:8:"stdClass":6:{s:2:"id";s:5:"39196";s:4:"slug";s:33:"google-analytics-dashboard-for-wp";s:6:"plugin";s:43:"google-analytics-dashboard-for-wp/gadwp.php";s:11:"new_version";s:5:"4.3.3";s:3:"url";s:64:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/";s:7:"package";s:82:"https://downloads.wordpress.org/plugin/google-analytics-dashboard-for-wp.4.3.3.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:31:"i-order-terms/i-order-terms.php";O:8:"stdClass":7:{s:2:"id";s:5:"46580";s:4:"slug";s:13:"i-order-terms";s:6:"plugin";s:31:"i-order-terms/i-order-terms.php";s:11:"new_version";s:5:"1.3.1";s:14:"upgrade_notice";s:61:"Shows taxonomy name next to taxonomy label in plugin settings";s:3:"url";s:44:"https://wordpress.org/plugins/i-order-terms/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/i-order-terms.1.3.1.zip";}s:24:"json-rest-api/plugin.php";O:8:"stdClass":6:{s:2:"id";s:5:"42054";s:4:"slug";s:13:"json-rest-api";s:6:"plugin";s:24:"json-rest-api/plugin.php";s:11:"new_version";s:5:"1.1.1";s:3:"url";s:44:"https://wordpress.org/plugins/json-rest-api/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/json-rest-api.1.1.1.zip";}s:57:"simple-share-buttons-adder/simple-share-buttons-adder.php";O:8:"stdClass":6:{s:2:"id";s:5:"39087";s:4:"slug";s:26:"simple-share-buttons-adder";s:6:"plugin";s:57:"simple-share-buttons-adder/simple-share-buttons-adder.php";s:11:"new_version";s:3:"4.7";s:3:"url";s:57:"https://wordpress.org/plugins/simple-share-buttons-adder/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/simple-share-buttons-adder.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}}}', 'yes'),
(696, '_site_transient_timeout_browser_164c11e95edf245cd8a126e94e2b7d89', '1411052774', 'yes'),
(697, '_site_transient_browser_164c11e95edf245cd8a126e94e2b7d89', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"37.0.2062.120";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(698, '_transient_timeout_gform_update_info', '1410534443', 'no'),
(699, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:6:{s:4:"date";s:29:"Thu, 11 Sep 2014 15:07:23 GMT";s:6:"server";s:12:"Apache/2.4.7";s:12:"x-powered-by";s:20:"PHP/5.5.9-1ubuntu4.4";s:14:"content-length";s:2:"13";s:10:"connection";s:5:"close";s:12:"content-type";s:9:"text/html";}s:4:"body";s:13:"0||1.7.9||||0";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_orbtrping_settings`
#

DROP TABLE IF EXISTS `wp_orbtrping_settings`;


#
# Table structure of table `wp_orbtrping_settings`
#

CREATE TABLE `wp_orbtrping_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `setting` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_orbtrping_settings`
#
INSERT INTO `wp_orbtrping_settings` ( `id`, `setting`, `value`) VALUES
(1, 'orbtrping_db_version', '1.0.0') ;

#
# End of data contents of table `wp_orbtrping_settings`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=1639 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1408977810'),
(4, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(7, 7, '_menu_item_type', 'post_type'),
(8, 7, '_menu_item_menu_item_parent', '0'),
(9, 7, '_menu_item_object_id', '5'),
(10, 7, '_menu_item_object', 'page'),
(11, 7, '_menu_item_target', ''),
(12, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13, 7, '_menu_item_xfn', ''),
(14, 7, '_menu_item_url', ''),
(15, 5, '_edit_lock', '1410192084:1'),
(16, 5, '_edit_last', '1'),
(17, 5, '_wp_page_template', 'template-home.php'),
(18, 5, '_roots_rwo_base', 'base-full.php'),
(19, 11, '_wp_attached_file', 'airpatrol.png'),
(20, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:205;s:6:"height";i:64;s:4:"file";s:13:"airpatrol.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"airpatrol-150x64.png";s:5:"width";i:150;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(21, 12, '_wp_attached_file', 'bosch.png'),
(22, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:253;s:6:"height";i:81;s:4:"file";s:9:"bosch.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"bosch-150x81.png";s:5:"width";i:150;s:6:"height";i:81;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(23, 13, '_wp_attached_file', 'nflabs.png'),
(24, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:619;s:6:"height";i:118;s:4:"file";s:10:"nflabs.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"nflabs-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"nflabs-300x57.png";s:5:"width";i:300;s:6:"height";i:57;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(25, 15, '_edit_last', '1'),
(26, 15, '_wp_page_template', 'default'),
(27, 15, '_edit_lock', '1410205892:1'),
(28, 17, '_edit_last', '1'),
(29, 17, '_wp_page_template', 'default'),
(30, 17, '_edit_lock', '1408993190:1'),
(31, 19, '_edit_last', '1'),
(32, 19, '_wp_page_template', 'default'),
(33, 19, '_edit_lock', '1408987944:1'),
(34, 21, '_edit_last', '1'),
(35, 21, '_wp_page_template', 'default'),
(36, 21, '_edit_lock', '1408987993:1'),
(37, 23, '_edit_last', '1'),
(38, 23, '_wp_page_template', 'default'),
(39, 23, '_edit_lock', '1408988451:1'),
(40, 25, '_edit_last', '1'),
(41, 25, '_edit_lock', '1408988830:1'),
(42, 25, '_wp_page_template', 'default'),
(43, 27, '_edit_last', '1'),
(44, 27, '_edit_lock', '1408989029:1'),
(45, 27, '_wp_page_template', 'default'),
(46, 29, '_edit_last', '1'),
(47, 29, '_edit_lock', '1408989174:1'),
(48, 29, '_wp_page_template', 'default'),
(49, 31, '_edit_last', '1'),
(50, 31, '_edit_lock', '1408989139:1'),
(51, 31, '_wp_page_template', 'default'),
(52, 33, '_edit_last', '1'),
(53, 33, '_edit_lock', '1408989228:1'),
(54, 33, '_wp_page_template', 'default'),
(55, 35, '_edit_last', '1'),
(56, 35, '_wp_page_template', 'default'),
(57, 35, '_edit_lock', '1408989272:1'),
(58, 37, '_edit_last', '1'),
(59, 37, '_wp_page_template', 'default'),
(60, 37, '_edit_lock', '1408989330:1'),
(61, 39, '_edit_last', '1'),
(62, 39, '_wp_page_template', 'default'),
(63, 39, '_edit_lock', '1408994901:1'),
(64, 41, '_edit_last', '1'),
(65, 41, '_edit_lock', '1408989698:1'),
(66, 41, '_wp_page_template', 'default'),
(67, 43, '_edit_last', '1'),
(68, 43, '_edit_lock', '1408982198:1'),
(69, 43, '_wp_page_template', 'default'),
(70, 45, '_edit_last', '1'),
(71, 45, '_edit_lock', '1408982214:1'),
(72, 45, '_wp_page_template', 'default'),
(73, 47, '_edit_last', '1'),
(74, 47, '_wp_page_template', 'default'),
(75, 47, '_edit_lock', '1408990193:1'),
(76, 49, '_edit_last', '1'),
(77, 49, '_edit_lock', '1408990256:1'),
(78, 49, '_wp_page_template', 'default'),
(79, 51, '_edit_last', '1'),
(80, 51, '_edit_lock', '1408990306:1'),
(81, 51, '_wp_page_template', 'default'),
(82, 53, '_edit_last', '1'),
(83, 53, '_edit_lock', '1408990362:1'),
(84, 53, '_wp_page_template', 'default'),
(85, 55, '_edit_last', '1'),
(86, 55, '_edit_lock', '1408990404:1'),
(87, 55, '_wp_page_template', 'default'),
(88, 57, '_edit_last', '1'),
(89, 57, '_edit_lock', '1408990448:1'),
(90, 57, '_wp_page_template', 'default'),
(91, 59, '_edit_last', '1'),
(92, 59, '_edit_lock', '1408990484:1'),
(93, 59, '_wp_page_template', 'default'),
(94, 61, '_edit_last', '1'),
(95, 61, '_edit_lock', '1408990559:1'),
(96, 61, '_wp_page_template', 'default'),
(97, 63, '_edit_last', '1'),
(98, 63, '_wp_page_template', 'default'),
(99, 63, '_edit_lock', '1409676075:1'),
(100, 65, '_edit_last', '1'),
(101, 65, '_edit_lock', '1408982379:1'),
(102, 65, '_wp_page_template', 'default'),
(103, 67, '_edit_last', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(104, 67, '_edit_lock', '1408982391:1'),
(105, 67, '_wp_page_template', 'default'),
(106, 69, '_edit_last', '1'),
(107, 69, '_wp_page_template', 'default'),
(108, 69, '_edit_lock', '1408992802:1'),
(109, 71, '_edit_last', '1'),
(110, 71, '_edit_lock', '1408982433:1'),
(111, 71, '_wp_page_template', 'default'),
(112, 73, '_edit_last', '1'),
(113, 73, '_edit_lock', '1408982445:1'),
(114, 73, '_wp_page_template', 'default'),
(115, 75, '_edit_last', '1'),
(116, 75, '_edit_lock', '1408986158:1'),
(117, 75, '_wp_page_template', 'default'),
(118, 77, '_menu_item_type', 'post_type'),
(119, 77, '_menu_item_menu_item_parent', '0'),
(120, 77, '_menu_item_object_id', '15'),
(121, 77, '_menu_item_object', 'page'),
(122, 77, '_menu_item_target', ''),
(123, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 77, '_menu_item_xfn', ''),
(125, 77, '_menu_item_url', ''),
(127, 78, '_menu_item_type', 'post_type'),
(128, 78, '_menu_item_menu_item_parent', '0'),
(129, 78, '_menu_item_object_id', '47'),
(130, 78, '_menu_item_object', 'page'),
(131, 78, '_menu_item_target', ''),
(132, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 78, '_menu_item_xfn', ''),
(134, 78, '_menu_item_url', ''),
(145, 80, '_menu_item_type', 'post_type'),
(146, 80, '_menu_item_menu_item_parent', '0'),
(147, 80, '_menu_item_object_id', '69'),
(148, 80, '_menu_item_object', 'page'),
(149, 80, '_menu_item_target', ''),
(150, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(151, 80, '_menu_item_xfn', ''),
(152, 80, '_menu_item_url', ''),
(154, 81, '_menu_item_type', 'post_type'),
(155, 81, '_menu_item_menu_item_parent', '0'),
(156, 81, '_menu_item_object_id', '23'),
(157, 81, '_menu_item_object', 'page'),
(158, 81, '_menu_item_target', ''),
(159, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(160, 81, '_menu_item_xfn', ''),
(161, 81, '_menu_item_url', ''),
(163, 82, '_menu_item_type', 'post_type'),
(164, 82, '_menu_item_menu_item_parent', '0'),
(165, 82, '_menu_item_object_id', '39'),
(166, 82, '_menu_item_object', 'page'),
(167, 82, '_menu_item_target', ''),
(168, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(169, 82, '_menu_item_xfn', ''),
(170, 82, '_menu_item_url', ''),
(172, 83, '_edit_last', '1'),
(175, 83, '_edit_lock', '1408986651:1'),
(178, 83, '_wp_trash_meta_status', 'publish'),
(179, 83, '_wp_trash_meta_time', '1408986796'),
(180, 87, '_edit_last', '1'),
(181, 87, '_edit_lock', '1408992881:1'),
(182, 87, '_wp_page_template', 'default'),
(183, 91, '_menu_item_type', 'post_type'),
(184, 91, '_menu_item_menu_item_parent', '0'),
(185, 91, '_menu_item_object_id', '75'),
(186, 91, '_menu_item_object', 'page'),
(187, 91, '_menu_item_target', ''),
(188, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(189, 91, '_menu_item_xfn', ''),
(190, 91, '_menu_item_url', ''),
(192, 92, '_menu_item_type', 'post_type'),
(193, 92, '_menu_item_menu_item_parent', '0'),
(194, 92, '_menu_item_object_id', '73'),
(195, 92, '_menu_item_object', 'page'),
(196, 92, '_menu_item_target', ''),
(197, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(198, 92, '_menu_item_xfn', ''),
(199, 92, '_menu_item_url', ''),
(201, 93, '_menu_item_type', 'post_type'),
(202, 93, '_menu_item_menu_item_parent', '0'),
(203, 93, '_menu_item_object_id', '71'),
(204, 93, '_menu_item_object', 'page'),
(205, 93, '_menu_item_target', ''),
(206, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(207, 93, '_menu_item_xfn', ''),
(208, 93, '_menu_item_url', ''),
(210, 94, '_menu_item_type', 'post_type'),
(211, 94, '_menu_item_menu_item_parent', '0'),
(212, 94, '_menu_item_object_id', '67'),
(213, 94, '_menu_item_object', 'page'),
(214, 94, '_menu_item_target', ''),
(215, 94, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(216, 94, '_menu_item_xfn', ''),
(217, 94, '_menu_item_url', ''),
(219, 95, '_menu_item_type', 'post_type'),
(220, 95, '_menu_item_menu_item_parent', '0'),
(221, 95, '_menu_item_object_id', '65'),
(222, 95, '_menu_item_object', 'page'),
(223, 95, '_menu_item_target', ''),
(224, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(225, 95, '_menu_item_xfn', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(226, 95, '_menu_item_url', ''),
(228, 96, '_menu_item_type', 'post_type'),
(229, 96, '_menu_item_menu_item_parent', '0'),
(230, 96, '_menu_item_object_id', '21'),
(231, 96, '_menu_item_object', 'page'),
(232, 96, '_menu_item_target', ''),
(233, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(234, 96, '_menu_item_xfn', ''),
(235, 96, '_menu_item_url', ''),
(237, 97, '_menu_item_type', 'post_type'),
(238, 97, '_menu_item_menu_item_parent', '0'),
(239, 97, '_menu_item_object_id', '19'),
(240, 97, '_menu_item_object', 'page'),
(241, 97, '_menu_item_target', ''),
(242, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(243, 97, '_menu_item_xfn', ''),
(244, 97, '_menu_item_url', ''),
(255, 99, '_menu_item_type', 'post_type'),
(256, 99, '_menu_item_menu_item_parent', '0'),
(257, 99, '_menu_item_object_id', '61'),
(258, 99, '_menu_item_object', 'page'),
(259, 99, '_menu_item_target', ''),
(260, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(261, 99, '_menu_item_xfn', ''),
(262, 99, '_menu_item_url', ''),
(264, 100, '_menu_item_type', 'post_type'),
(265, 100, '_menu_item_menu_item_parent', '0'),
(266, 100, '_menu_item_object_id', '55'),
(267, 100, '_menu_item_object', 'page'),
(268, 100, '_menu_item_target', ''),
(269, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(270, 100, '_menu_item_xfn', ''),
(271, 100, '_menu_item_url', ''),
(273, 101, '_menu_item_type', 'post_type'),
(274, 101, '_menu_item_menu_item_parent', '0'),
(275, 101, '_menu_item_object_id', '57'),
(276, 101, '_menu_item_object', 'page'),
(277, 101, '_menu_item_target', ''),
(278, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(279, 101, '_menu_item_xfn', ''),
(280, 101, '_menu_item_url', ''),
(282, 102, '_menu_item_type', 'post_type'),
(283, 102, '_menu_item_menu_item_parent', '0'),
(284, 102, '_menu_item_object_id', '49'),
(285, 102, '_menu_item_object', 'page'),
(286, 102, '_menu_item_target', ''),
(287, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(288, 102, '_menu_item_xfn', ''),
(289, 102, '_menu_item_url', ''),
(291, 103, '_menu_item_type', 'post_type'),
(292, 103, '_menu_item_menu_item_parent', '0'),
(293, 103, '_menu_item_object_id', '51'),
(294, 103, '_menu_item_object', 'page'),
(295, 103, '_menu_item_target', ''),
(296, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(297, 103, '_menu_item_xfn', ''),
(298, 103, '_menu_item_url', ''),
(300, 104, '_menu_item_type', 'post_type'),
(301, 104, '_menu_item_menu_item_parent', '0'),
(302, 104, '_menu_item_object_id', '59'),
(303, 104, '_menu_item_object', 'page'),
(304, 104, '_menu_item_target', ''),
(305, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(306, 104, '_menu_item_xfn', ''),
(307, 104, '_menu_item_url', ''),
(309, 105, '_menu_item_type', 'post_type'),
(310, 105, '_menu_item_menu_item_parent', '0'),
(311, 105, '_menu_item_object_id', '53'),
(312, 105, '_menu_item_object', 'page'),
(313, 105, '_menu_item_target', ''),
(314, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(315, 105, '_menu_item_xfn', ''),
(316, 105, '_menu_item_url', ''),
(318, 106, '_menu_item_type', 'post_type'),
(319, 106, '_menu_item_menu_item_parent', '0'),
(320, 106, '_menu_item_object_id', '43'),
(321, 106, '_menu_item_object', 'page'),
(322, 106, '_menu_item_target', ''),
(323, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(324, 106, '_menu_item_xfn', ''),
(325, 106, '_menu_item_url', ''),
(327, 107, '_menu_item_type', 'post_type'),
(328, 107, '_menu_item_menu_item_parent', '0'),
(329, 107, '_menu_item_object_id', '45'),
(330, 107, '_menu_item_object', 'page'),
(331, 107, '_menu_item_target', ''),
(332, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(333, 107, '_menu_item_xfn', ''),
(334, 107, '_menu_item_url', ''),
(336, 108, '_menu_item_type', 'post_type'),
(337, 108, '_menu_item_menu_item_parent', '0'),
(338, 108, '_menu_item_object_id', '41'),
(339, 108, '_menu_item_object', 'page'),
(340, 108, '_menu_item_target', ''),
(341, 108, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(342, 108, '_menu_item_xfn', ''),
(343, 108, '_menu_item_url', ''),
(345, 109, '_menu_item_type', 'post_type'),
(346, 109, '_menu_item_menu_item_parent', '0'),
(347, 109, '_menu_item_object_id', '35') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(348, 109, '_menu_item_object', 'page'),
(349, 109, '_menu_item_target', ''),
(350, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(351, 109, '_menu_item_xfn', ''),
(352, 109, '_menu_item_url', ''),
(354, 110, '_menu_item_type', 'post_type'),
(355, 110, '_menu_item_menu_item_parent', '0'),
(356, 110, '_menu_item_object_id', '27'),
(357, 110, '_menu_item_object', 'page'),
(358, 110, '_menu_item_target', ''),
(359, 110, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(360, 110, '_menu_item_xfn', ''),
(361, 110, '_menu_item_url', ''),
(363, 111, '_menu_item_type', 'post_type'),
(364, 111, '_menu_item_menu_item_parent', '0'),
(365, 111, '_menu_item_object_id', '25'),
(366, 111, '_menu_item_object', 'page'),
(367, 111, '_menu_item_target', ''),
(368, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(369, 111, '_menu_item_xfn', ''),
(370, 111, '_menu_item_url', ''),
(372, 112, '_menu_item_type', 'post_type'),
(373, 112, '_menu_item_menu_item_parent', '0'),
(374, 112, '_menu_item_object_id', '31'),
(375, 112, '_menu_item_object', 'page'),
(376, 112, '_menu_item_target', ''),
(377, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(378, 112, '_menu_item_xfn', ''),
(379, 112, '_menu_item_url', ''),
(381, 113, '_menu_item_type', 'post_type'),
(382, 113, '_menu_item_menu_item_parent', '0'),
(383, 113, '_menu_item_object_id', '33'),
(384, 113, '_menu_item_object', 'page'),
(385, 113, '_menu_item_target', ''),
(386, 113, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(387, 113, '_menu_item_xfn', ''),
(388, 113, '_menu_item_url', ''),
(390, 114, '_menu_item_type', 'post_type'),
(391, 114, '_menu_item_menu_item_parent', '0'),
(392, 114, '_menu_item_object_id', '29'),
(393, 114, '_menu_item_object', 'page'),
(394, 114, '_menu_item_target', ''),
(395, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(396, 114, '_menu_item_xfn', ''),
(397, 114, '_menu_item_url', ''),
(399, 115, '_menu_item_type', 'post_type'),
(400, 115, '_menu_item_menu_item_parent', '0'),
(401, 115, '_menu_item_object_id', '37'),
(402, 115, '_menu_item_object', 'page'),
(403, 115, '_menu_item_target', ''),
(404, 115, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(405, 115, '_menu_item_xfn', ''),
(406, 115, '_menu_item_url', ''),
(408, 146, '_edit_last', '1'),
(409, 146, '_edit_lock', '1408992769:1'),
(410, 146, '_wp_page_template', 'default'),
(411, 148, '_menu_item_type', 'post_type'),
(412, 148, '_menu_item_menu_item_parent', '0'),
(413, 148, '_menu_item_object_id', '146'),
(414, 148, '_menu_item_object', 'page'),
(415, 148, '_menu_item_target', ''),
(416, 148, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(417, 148, '_menu_item_xfn', ''),
(418, 148, '_menu_item_url', ''),
(420, 17, '_wp_trash_meta_status', 'publish'),
(421, 17, '_wp_trash_meta_time', '1408993334'),
(422, 155, '_menu_item_type', 'post_type'),
(423, 155, '_menu_item_menu_item_parent', '0'),
(424, 155, '_menu_item_object_id', '15'),
(425, 155, '_menu_item_object', 'page'),
(426, 155, '_menu_item_target', ''),
(427, 155, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(428, 155, '_menu_item_xfn', ''),
(429, 155, '_menu_item_url', ''),
(431, 156, '_menu_item_type', 'post_type'),
(432, 156, '_menu_item_menu_item_parent', '0'),
(433, 156, '_menu_item_object_id', '63'),
(434, 156, '_menu_item_object', 'page'),
(435, 156, '_menu_item_target', ''),
(436, 156, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(437, 156, '_menu_item_xfn', ''),
(438, 156, '_menu_item_url', ''),
(444, 268, 'home_slider', '0'),
(445, 268, '_home_slider', 'field_53c8661caaa7a'),
(446, 268, 'welcome_items', '0'),
(447, 268, '_welcome_items', 'field_52d7f49140889'),
(448, 268, 'page_sub_title', ''),
(449, 268, '_page_sub_title', 'field_52b1dbc2191b0'),
(450, 268, 'page_title_type', 'default'),
(451, 268, '_page_title_type', 'field_52b1e150191b1'),
(452, 268, 'page_header_color', 'none'),
(453, 268, '_page_header_color', 'field_52b220f130496'),
(454, 5, 'home_slider', '3'),
(455, 5, '_home_slider', 'field_53c8661caaa7a'),
(456, 5, 'welcome_items', '0'),
(457, 5, '_welcome_items', 'field_52d7f49140889'),
(458, 5, 'page_sub_title', ''),
(459, 5, '_page_sub_title', 'field_52b1dbc2191b0'),
(460, 5, 'page_title_type', 'default'),
(461, 5, '_page_title_type', 'field_52b1e150191b1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(462, 5, 'page_header_color', 'none'),
(463, 5, '_page_header_color', 'field_52b220f130496'),
(464, 269, 'home_slider', '0'),
(465, 269, '_home_slider', 'field_53c8661caaa7a'),
(466, 269, 'welcome_items', '0'),
(467, 269, '_welcome_items', 'field_52d7f49140889'),
(468, 269, 'page_sub_title', ''),
(469, 269, '_page_sub_title', 'field_52b1dbc2191b0'),
(470, 269, 'page_title_type', 'default'),
(471, 269, '_page_title_type', 'field_52b1e150191b1'),
(472, 269, 'page_header_color', 'none'),
(473, 269, '_page_header_color', 'field_52b220f130496'),
(474, 8, 'page_sub_title', ''),
(475, 8, '_page_sub_title', 'field_52b1dbc2191b0'),
(476, 8, 'page_title_type', 'default'),
(477, 8, '_page_title_type', 'field_52b1e150191b1'),
(478, 8, 'page_header_color', 'none'),
(479, 8, '_page_header_color', 'field_52b220f130496'),
(480, 8, 'km_builder', ''),
(481, 8, '_km_builder', 'field_52accdd43c99b'),
(482, 270, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(483, 270, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(484, 270, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks: '),
(485, 270, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(486, 270, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(487, 270, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(488, 270, 'home_slider_0_home_slider_btn_link', ''),
(489, 270, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(490, 270, 'home_slider_0_home_slider_image', ''),
(491, 270, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(492, 270, 'home_slider_0_home_slider_anim', ''),
(493, 270, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(494, 270, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(495, 270, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(496, 270, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(497, 270, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(498, 270, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(499, 270, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(500, 270, 'home_slider_1_home_slider_btn_link', ''),
(501, 270, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(502, 270, 'home_slider_1_home_slider_image', ''),
(503, 270, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(504, 270, 'home_slider_1_home_slider_anim', ''),
(505, 270, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(506, 270, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(507, 270, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(508, 270, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(509, 270, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(510, 270, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(511, 270, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(512, 270, 'home_slider_2_home_slider_btn_link', ''),
(513, 270, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(514, 270, 'home_slider_2_home_slider_image', ''),
(515, 270, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(516, 270, 'home_slider_2_home_slider_anim', ''),
(517, 270, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(518, 270, 'home_slider', '3'),
(519, 270, '_home_slider', 'field_53c8661caaa7a'),
(520, 270, 'welcome_items', '0'),
(521, 270, '_welcome_items', 'field_52d7f49140889'),
(522, 270, 'page_sub_title', ''),
(523, 270, '_page_sub_title', 'field_52b1dbc2191b0'),
(524, 270, 'page_title_type', 'default'),
(525, 270, '_page_title_type', 'field_52b1e150191b1'),
(526, 270, 'page_header_color', 'none'),
(527, 270, '_page_header_color', 'field_52b220f130496'),
(528, 5, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(529, 5, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(530, 5, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(531, 5, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(532, 5, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(533, 5, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(534, 5, 'home_slider_0_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(535, 5, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(536, 5, 'home_slider_0_home_slider_image', '1729'),
(537, 5, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(538, 5, 'home_slider_0_home_slider_anim', ''),
(539, 5, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(540, 5, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(541, 5, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(542, 5, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(543, 5, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(544, 5, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(545, 5, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(546, 5, 'home_slider_1_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(547, 5, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(548, 5, 'home_slider_1_home_slider_image', '1726'),
(549, 5, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(550, 5, 'home_slider_1_home_slider_anim', ''),
(551, 5, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(552, 5, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(553, 5, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(554, 5, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(555, 5, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(556, 5, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(557, 5, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(558, 5, 'home_slider_2_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(559, 5, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(560, 5, 'home_slider_2_home_slider_image', '1727'),
(561, 5, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(562, 5, 'home_slider_2_home_slider_anim', ''),
(563, 5, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(570, 274, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(571, 274, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(572, 274, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(573, 274, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(574, 274, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(575, 274, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(576, 274, 'home_slider_0_home_slider_btn_link', ''),
(577, 274, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(578, 274, 'home_slider_0_home_slider_image', '271'),
(579, 274, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(580, 274, 'home_slider_0_home_slider_anim', ''),
(581, 274, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(582, 274, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(583, 274, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(584, 274, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(585, 274, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(586, 274, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(587, 274, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(588, 274, 'home_slider_1_home_slider_btn_link', ''),
(589, 274, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(590, 274, 'home_slider_1_home_slider_image', '272'),
(591, 274, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(592, 274, 'home_slider_1_home_slider_anim', ''),
(593, 274, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(594, 274, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(595, 274, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(596, 274, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(597, 274, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(598, 274, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(599, 274, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(600, 274, 'home_slider_2_home_slider_btn_link', ''),
(601, 274, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(602, 274, 'home_slider_2_home_slider_image', '273'),
(603, 274, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(604, 274, 'home_slider_2_home_slider_anim', ''),
(605, 274, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(606, 274, 'home_slider', '3'),
(607, 274, '_home_slider', 'field_53c8661caaa7a'),
(608, 274, 'welcome_items', '0'),
(609, 274, '_welcome_items', 'field_52d7f49140889'),
(610, 274, 'page_sub_title', ''),
(611, 274, '_page_sub_title', 'field_52b1dbc2191b0'),
(612, 274, 'page_title_type', 'default'),
(613, 274, '_page_title_type', 'field_52b1e150191b1'),
(614, 274, 'page_header_color', 'none'),
(615, 274, '_page_header_color', 'field_52b220f130496'),
(616, 168, '_edit_lock', '1409864194:1'),
(617, 275, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(618, 275, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(619, 275, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(620, 275, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(621, 275, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(622, 275, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(623, 275, 'home_slider_0_home_slider_btn_link', ''),
(624, 275, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(625, 275, 'home_slider_0_home_slider_image', '271'),
(626, 275, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(627, 275, 'home_slider_0_home_slider_anim', ''),
(628, 275, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(629, 275, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(630, 275, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(631, 275, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(632, 275, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(633, 275, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(634, 275, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(635, 275, 'home_slider_1_home_slider_btn_link', ''),
(636, 275, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(637, 275, 'home_slider_1_home_slider_image', '272'),
(638, 275, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(639, 275, 'home_slider_1_home_slider_anim', ''),
(640, 275, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(641, 275, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(642, 275, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(643, 275, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(644, 275, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(645, 275, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(646, 275, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(647, 275, 'home_slider_2_home_slider_btn_link', ''),
(648, 275, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(649, 275, 'home_slider_2_home_slider_image', '273'),
(650, 275, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(651, 275, 'home_slider_2_home_slider_anim', ''),
(652, 275, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(653, 275, 'home_slider', '3'),
(654, 275, '_home_slider', 'field_53c8661caaa7a'),
(655, 275, 'welcome_items', '0'),
(656, 275, '_welcome_items', 'field_52d7f49140889'),
(657, 275, 'page_sub_title', ''),
(658, 275, '_page_sub_title', 'field_52b1dbc2191b0'),
(659, 275, 'page_title_type', 'default'),
(660, 275, '_page_title_type', 'field_52b1e150191b1'),
(661, 275, 'page_header_color', 'none'),
(662, 275, '_page_header_color', 'field_52b220f130496'),
(669, 277, '_wp_attached_file', 'footer-logo.png'),
(670, 277, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:324;s:6:"height";i:207;s:4:"file";s:15:"footer-logo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"footer-logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"footer-logo-300x191.png";s:5:"width";i:300;s:6:"height";i:191;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(671, 278, '_edit_last', '1'),
(672, 278, '_wp_page_template', 'default'),
(673, 279, 'page_sub_title', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(674, 279, '_page_sub_title', 'field_52b1dbc2191b0'),
(675, 279, 'page_title_type', 'default'),
(676, 279, '_page_title_type', 'field_52b1e150191b1'),
(677, 279, 'page_header_color', 'none'),
(678, 279, '_page_header_color', 'field_52b220f130496'),
(679, 278, 'page_sub_title', ''),
(680, 278, '_page_sub_title', 'field_52b1dbc2191b0'),
(681, 278, 'page_title_type', 'default'),
(682, 278, '_page_title_type', 'field_52b1e150191b1'),
(683, 278, 'page_header_color', 'none'),
(684, 278, '_page_header_color', 'field_52b220f130496'),
(685, 278, '_edit_lock', '1409062160:1'),
(692, 284, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(693, 284, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(694, 284, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(695, 284, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(696, 284, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(697, 284, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(698, 284, 'home_slider_0_home_slider_btn_link', ''),
(699, 284, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(700, 284, 'home_slider_0_home_slider_image', '283'),
(701, 284, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(702, 284, 'home_slider_0_home_slider_anim', ''),
(703, 284, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(704, 284, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(705, 284, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(706, 284, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(707, 284, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(708, 284, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(709, 284, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(710, 284, 'home_slider_1_home_slider_btn_link', ''),
(711, 284, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(712, 284, 'home_slider_1_home_slider_image', '281'),
(713, 284, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(714, 284, 'home_slider_1_home_slider_anim', ''),
(715, 284, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(716, 284, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(717, 284, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(718, 284, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(719, 284, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(720, 284, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(721, 284, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(722, 284, 'home_slider_2_home_slider_btn_link', ''),
(723, 284, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(724, 284, 'home_slider_2_home_slider_image', '282'),
(725, 284, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(726, 284, 'home_slider_2_home_slider_anim', ''),
(727, 284, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(728, 284, 'home_slider', '3'),
(729, 284, '_home_slider', 'field_53c8661caaa7a'),
(730, 284, 'welcome_items', '0'),
(731, 284, '_welcome_items', 'field_52d7f49140889'),
(732, 284, 'page_sub_title', ''),
(733, 284, '_page_sub_title', 'field_52b1dbc2191b0'),
(734, 284, 'page_title_type', 'default'),
(735, 284, '_page_title_type', 'field_52b1e150191b1'),
(736, 284, 'page_header_color', 'none'),
(737, 284, '_page_header_color', 'field_52b220f130496'),
(740, 1577, '_edit_last', '1'),
(741, 1652, '_edit_last', '1'),
(742, 1675, '_edit_last', '1'),
(743, 1675, '_thumbnail_id', '1676'),
(744, 1678, '_edit_last', '1'),
(745, 1680, '_edit_last', '1'),
(746, 1680, '_thumbnail_id', '1681'),
(747, 1683, '_edit_last', '1'),
(748, 1683, '_edit_lock', '1409675864:1'),
(753, 1680, '_edit_lock', '1409675900:1'),
(756, 1678, '_edit_lock', '1409675946:1'),
(759, 1577, '_edit_lock', '1409675970:1'),
(762, 1675, '_edit_lock', '1409676006:1'),
(803, 1651, '_edit_lock', '1409676178:1'),
(804, 1651, '_edit_last', '1'),
(809, 168, '_edit_last', '1'),
(810, 1704, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(811, 1704, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(812, 1704, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(813, 1704, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(814, 1704, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(815, 1704, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(816, 1704, 'home_slider_0_home_slider_btn_link', ''),
(817, 1704, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(818, 1704, 'home_slider_0_home_slider_image', '283'),
(819, 1704, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(820, 1704, 'home_slider_0_home_slider_anim', ''),
(821, 1704, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(822, 1704, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(823, 1704, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(824, 1704, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(825, 1704, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(826, 1704, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(827, 1704, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(828, 1704, 'home_slider_1_home_slider_btn_link', ''),
(829, 1704, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(830, 1704, 'home_slider_1_home_slider_image', '281'),
(831, 1704, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(832, 1704, 'home_slider_1_home_slider_anim', ''),
(833, 1704, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(834, 1704, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(835, 1704, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(836, 1704, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(837, 1704, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(838, 1704, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(839, 1704, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(840, 1704, 'home_slider_2_home_slider_btn_link', ''),
(841, 1704, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(842, 1704, 'home_slider_2_home_slider_image', '282'),
(843, 1704, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(844, 1704, 'home_slider_2_home_slider_anim', ''),
(845, 1704, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(846, 1704, 'home_slider', '3'),
(847, 1704, '_home_slider', 'field_53c8661caaa7a'),
(848, 1704, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(849, 1704, '_home_callout_title', 'field_540894758e576'),
(850, 1704, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(851, 1704, '_home_callout_paragraph', 'field_5408958c8e579'),
(852, 1704, 'home_callout_button_link', '/about'),
(853, 1704, '_home_callout_button_link', 'field_540895af8e57a'),
(854, 1704, 'page_sub_title', ''),
(855, 1704, '_page_sub_title', 'field_52b1dbc2191b0'),
(856, 1704, 'page_title_type', 'default'),
(857, 1704, '_page_title_type', 'field_52b1e150191b1'),
(858, 1704, 'page_header_color', 'none'),
(859, 1704, '_page_header_color', 'field_52b220f130496'),
(860, 5, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(861, 5, '_home_callout_title', 'field_540894758e576'),
(862, 5, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(863, 5, '_home_callout_paragraph', 'field_5408958c8e579'),
(864, 5, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(865, 5, '_home_callout_button_link', 'field_540895af8e57a'),
(866, 1710, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(867, 1710, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(868, 1710, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(869, 1710, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(870, 1710, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(871, 1710, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(872, 1710, 'home_slider_0_home_slider_btn_link', ''),
(873, 1710, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(874, 1710, 'home_slider_0_home_slider_image', '283'),
(875, 1710, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(876, 1710, 'home_slider_0_home_slider_anim', ''),
(877, 1710, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(878, 1710, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(879, 1710, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(880, 1710, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(881, 1710, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(882, 1710, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(883, 1710, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(884, 1710, 'home_slider_1_home_slider_btn_link', ''),
(885, 1710, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(886, 1710, 'home_slider_1_home_slider_image', '281'),
(887, 1710, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(888, 1710, 'home_slider_1_home_slider_anim', ''),
(889, 1710, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(890, 1710, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(891, 1710, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(892, 1710, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(893, 1710, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(894, 1710, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(895, 1710, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(896, 1710, 'home_slider_2_home_slider_btn_link', ''),
(897, 1710, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(898, 1710, 'home_slider_2_home_slider_image', '282'),
(899, 1710, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(900, 1710, 'home_slider_2_home_slider_anim', ''),
(901, 1710, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(902, 1710, 'home_slider', '3'),
(903, 1710, '_home_slider', 'field_53c8661caaa7a'),
(904, 1710, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(905, 1710, '_home_callout_title', 'field_540894758e576'),
(906, 1710, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(907, 1710, '_home_callout_paragraph', 'field_5408958c8e579'),
(908, 1710, 'home_callout_button_link', '/about'),
(909, 1710, '_home_callout_button_link', 'field_540895af8e57a'),
(910, 1710, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(911, 1710, '_home_main_title', 'field_5408cd723d59f'),
(912, 1710, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense'),
(913, 1710, '_home_main_body', 'field_5408cd833d5a0'),
(914, 1710, 'home_main_link_text', 'More About BH Defense '),
(915, 1710, '_home_main_link_text', 'field_5408cdb03d5a1'),
(916, 1710, 'home_main_link', '/about'),
(917, 1710, '_home_main_link', 'field_5408cdd33d5a2'),
(918, 1710, 'page_sub_title', ''),
(919, 1710, '_page_sub_title', 'field_52b1dbc2191b0'),
(920, 1710, 'page_title_type', 'default'),
(921, 1710, '_page_title_type', 'field_52b1e150191b1'),
(922, 1710, 'page_header_color', 'none'),
(923, 1710, '_page_header_color', 'field_52b220f130496'),
(924, 5, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(925, 5, '_home_main_title', 'field_5408cd723d59f'),
(926, 5, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.'),
(927, 5, '_home_main_body', 'field_5408cd833d5a0'),
(928, 5, 'home_main_link_text', 'Solutions for Every Type of Risk'),
(929, 5, '_home_main_link_text', 'field_5408cdb03d5a1'),
(930, 5, 'home_main_link', 'http://kmdig.com/client/bhdefense/solutions'),
(931, 5, '_home_main_link', 'field_5408cdd33d5a2'),
(932, 1711, '_menu_item_type', 'post_type'),
(933, 1711, '_menu_item_menu_item_parent', '0'),
(934, 1711, '_menu_item_object_id', '63'),
(935, 1711, '_menu_item_object', 'page') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(936, 1711, '_menu_item_target', ''),
(937, 1711, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(938, 1711, '_menu_item_xfn', ''),
(939, 1711, '_menu_item_url', ''),
(941, 1712, '_menu_item_type', 'post_type'),
(942, 1712, '_menu_item_menu_item_parent', '0'),
(943, 1712, '_menu_item_object_id', '87'),
(944, 1712, '_menu_item_object', 'page'),
(945, 1712, '_menu_item_target', ''),
(946, 1712, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(947, 1712, '_menu_item_xfn', ''),
(948, 1712, '_menu_item_url', ''),
(950, 1713, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(951, 1713, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(952, 1713, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(953, 1713, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(954, 1713, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(955, 1713, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(956, 1713, 'home_slider_0_home_slider_btn_link', '/about'),
(957, 1713, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(958, 1713, 'home_slider_0_home_slider_image', '283'),
(959, 1713, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(960, 1713, 'home_slider_0_home_slider_anim', ''),
(961, 1713, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(962, 1713, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(963, 1713, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(964, 1713, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(965, 1713, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(966, 1713, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(967, 1713, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(968, 1713, 'home_slider_1_home_slider_btn_link', '/about'),
(969, 1713, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(970, 1713, 'home_slider_1_home_slider_image', '281'),
(971, 1713, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(972, 1713, 'home_slider_1_home_slider_anim', ''),
(973, 1713, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(974, 1713, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(975, 1713, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(976, 1713, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(977, 1713, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(978, 1713, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(979, 1713, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(980, 1713, 'home_slider_2_home_slider_btn_link', '/about'),
(981, 1713, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(982, 1713, 'home_slider_2_home_slider_image', '282'),
(983, 1713, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(984, 1713, 'home_slider_2_home_slider_anim', ''),
(985, 1713, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(986, 1713, 'home_slider', '3'),
(987, 1713, '_home_slider', 'field_53c8661caaa7a'),
(988, 1713, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(989, 1713, '_home_callout_title', 'field_540894758e576'),
(990, 1713, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(991, 1713, '_home_callout_paragraph', 'field_5408958c8e579'),
(992, 1713, 'home_callout_button_link', '/about'),
(993, 1713, '_home_callout_button_link', 'field_540895af8e57a'),
(994, 1713, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(995, 1713, '_home_main_title', 'field_5408cd723d59f'),
(996, 1713, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense'),
(997, 1713, '_home_main_body', 'field_5408cd833d5a0'),
(998, 1713, 'home_main_link_text', 'More About BH Defense'),
(999, 1713, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1000, 1713, 'home_main_link', '/about'),
(1001, 1713, '_home_main_link', 'field_5408cdd33d5a2'),
(1002, 1713, 'page_sub_title', ''),
(1003, 1713, '_page_sub_title', 'field_52b1dbc2191b0'),
(1004, 1713, 'page_title_type', 'default'),
(1005, 1713, '_page_title_type', 'field_52b1e150191b1'),
(1006, 1713, 'page_header_color', 'none'),
(1007, 1713, '_page_header_color', 'field_52b220f130496'),
(1008, 1714, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1009, 1714, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(1010, 1714, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1011, 1714, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1012, 1714, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1013, 1714, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1014, 1714, 'home_slider_0_home_slider_btn_link', '/about'),
(1015, 1714, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1016, 1714, 'home_slider_0_home_slider_image', '283'),
(1017, 1714, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1018, 1714, 'home_slider_0_home_slider_anim', ''),
(1019, 1714, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1020, 1714, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1021, 1714, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(1022, 1714, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1023, 1714, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1024, 1714, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1025, 1714, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1026, 1714, 'home_slider_1_home_slider_btn_link', '/about'),
(1027, 1714, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(1028, 1714, 'home_slider_1_home_slider_image', '281'),
(1029, 1714, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1030, 1714, 'home_slider_1_home_slider_anim', ''),
(1031, 1714, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1032, 1714, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1033, 1714, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1034, 1714, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1035, 1714, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1036, 1714, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1037, 1714, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1038, 1714, 'home_slider_2_home_slider_btn_link', '/about'),
(1039, 1714, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1040, 1714, 'home_slider_2_home_slider_image', '282'),
(1041, 1714, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1042, 1714, 'home_slider_2_home_slider_anim', ''),
(1043, 1714, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1044, 1714, 'home_slider', '3'),
(1045, 1714, '_home_slider', 'field_53c8661caaa7a'),
(1046, 1714, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1047, 1714, '_home_callout_title', 'field_540894758e576'),
(1048, 1714, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1049, 1714, '_home_callout_paragraph', 'field_5408958c8e579'),
(1050, 1714, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1051, 1714, '_home_callout_button_link', 'field_540895af8e57a'),
(1052, 1714, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1053, 1714, '_home_main_title', 'field_5408cd723d59f'),
(1054, 1714, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense'),
(1055, 1714, '_home_main_body', 'field_5408cd833d5a0'),
(1056, 1714, 'home_main_link_text', 'More About BH Defense'),
(1057, 1714, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1058, 1714, 'home_main_link', '/about'),
(1059, 1714, '_home_main_link', 'field_5408cdd33d5a2'),
(1060, 1714, 'page_sub_title', ''),
(1061, 1714, '_page_sub_title', 'field_52b1dbc2191b0'),
(1062, 1714, 'page_title_type', 'default'),
(1063, 1714, '_page_title_type', 'field_52b1e150191b1'),
(1064, 1714, 'page_header_color', 'none'),
(1065, 1714, '_page_header_color', 'field_52b220f130496'),
(1066, 1715, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1067, 1715, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(1068, 1715, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1069, 1715, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1070, 1715, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1071, 1715, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1072, 1715, 'home_slider_0_home_slider_btn_link', '/about'),
(1073, 1715, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1074, 1715, 'home_slider_0_home_slider_image', '283'),
(1075, 1715, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1076, 1715, 'home_slider_0_home_slider_anim', ''),
(1077, 1715, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1078, 1715, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1079, 1715, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(1080, 1715, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1081, 1715, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1082, 1715, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1083, 1715, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1084, 1715, 'home_slider_1_home_slider_btn_link', '/about'),
(1085, 1715, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(1086, 1715, 'home_slider_1_home_slider_image', '281'),
(1087, 1715, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1088, 1715, 'home_slider_1_home_slider_anim', ''),
(1089, 1715, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1090, 1715, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1091, 1715, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1092, 1715, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1093, 1715, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1094, 1715, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1095, 1715, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(1096, 1715, 'home_slider_2_home_slider_btn_link', '/about'),
(1097, 1715, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1098, 1715, 'home_slider_2_home_slider_image', '282'),
(1099, 1715, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1100, 1715, 'home_slider_2_home_slider_anim', ''),
(1101, 1715, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1102, 1715, 'home_slider', '3'),
(1103, 1715, '_home_slider', 'field_53c8661caaa7a'),
(1104, 1715, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1105, 1715, '_home_callout_title', 'field_540894758e576'),
(1106, 1715, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1107, 1715, '_home_callout_paragraph', 'field_5408958c8e579'),
(1108, 1715, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1109, 1715, '_home_callout_button_link', 'field_540895af8e57a'),
(1110, 1715, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1111, 1715, '_home_main_title', 'field_5408cd723d59f'),
(1112, 1715, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense'),
(1113, 1715, '_home_main_body', 'field_5408cd833d5a0'),
(1114, 1715, 'home_main_link_text', 'More About BH Defense'),
(1115, 1715, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1116, 1715, 'home_main_link', 'http://kmdig.com/client/bhdefense/about'),
(1117, 1715, '_home_main_link', 'field_5408cdd33d5a2'),
(1118, 1715, 'page_sub_title', ''),
(1119, 1715, '_page_sub_title', 'field_52b1dbc2191b0'),
(1120, 1715, 'page_title_type', 'default'),
(1121, 1715, '_page_title_type', 'field_52b1e150191b1'),
(1122, 1715, 'page_header_color', 'none'),
(1123, 1715, '_page_header_color', 'field_52b220f130496'),
(1124, 1716, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1125, 1716, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(1126, 1716, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1127, 1716, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1128, 1716, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1129, 1716, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1130, 1716, 'home_slider_0_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1131, 1716, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1132, 1716, 'home_slider_0_home_slider_image', '283'),
(1133, 1716, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1134, 1716, 'home_slider_0_home_slider_anim', ''),
(1135, 1716, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1136, 1716, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1137, 1716, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1138, 1716, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1139, 1716, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1140, 1716, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1141, 1716, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1142, 1716, 'home_slider_1_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1143, 1716, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(1144, 1716, 'home_slider_1_home_slider_image', '281'),
(1145, 1716, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1146, 1716, 'home_slider_1_home_slider_anim', ''),
(1147, 1716, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1148, 1716, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1149, 1716, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1150, 1716, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1151, 1716, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1152, 1716, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1153, 1716, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(1154, 1716, 'home_slider_2_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1155, 1716, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1156, 1716, 'home_slider_2_home_slider_image', '282'),
(1157, 1716, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1158, 1716, 'home_slider_2_home_slider_anim', ''),
(1159, 1716, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1160, 1716, 'home_slider', '3'),
(1161, 1716, '_home_slider', 'field_53c8661caaa7a'),
(1162, 1716, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1163, 1716, '_home_callout_title', 'field_540894758e576'),
(1164, 1716, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1165, 1716, '_home_callout_paragraph', 'field_5408958c8e579'),
(1166, 1716, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1167, 1716, '_home_callout_button_link', 'field_540895af8e57a'),
(1168, 1716, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1169, 1716, '_home_main_title', 'field_5408cd723d59f'),
(1170, 1716, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense'),
(1171, 1716, '_home_main_body', 'field_5408cd833d5a0'),
(1172, 1716, 'home_main_link_text', 'More About BH Defense'),
(1173, 1716, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1174, 1716, 'home_main_link', 'http://kmdig.com/client/bhdefense/about'),
(1175, 1716, '_home_main_link', 'field_5408cdd33d5a2'),
(1176, 1716, 'page_sub_title', ''),
(1177, 1716, '_page_sub_title', 'field_52b1dbc2191b0'),
(1178, 1716, 'page_title_type', 'default'),
(1179, 1716, '_page_title_type', 'field_52b1e150191b1'),
(1180, 1716, 'page_header_color', 'none'),
(1181, 1716, '_page_header_color', 'field_52b220f130496'),
(1182, 1717, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1183, 1717, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(1184, 1717, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1185, 1717, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1186, 1717, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1187, 1717, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1188, 1717, 'home_slider_0_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1189, 1717, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1190, 1717, 'home_slider_0_home_slider_image', '283'),
(1191, 1717, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1192, 1717, 'home_slider_0_home_slider_anim', ''),
(1193, 1717, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1194, 1717, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1195, 1717, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(1196, 1717, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1197, 1717, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1198, 1717, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1199, 1717, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1200, 1717, 'home_slider_1_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1201, 1717, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(1202, 1717, 'home_slider_1_home_slider_image', '281'),
(1203, 1717, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1204, 1717, 'home_slider_1_home_slider_anim', ''),
(1205, 1717, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1206, 1717, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1207, 1717, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1208, 1717, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1209, 1717, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1210, 1717, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1211, 1717, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(1212, 1717, 'home_slider_2_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1213, 1717, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1214, 1717, 'home_slider_2_home_slider_image', '282'),
(1215, 1717, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1216, 1717, 'home_slider_2_home_slider_anim', ''),
(1217, 1717, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1218, 1717, 'home_slider', '3'),
(1219, 1717, '_home_slider', 'field_53c8661caaa7a'),
(1220, 1717, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1221, 1717, '_home_callout_title', 'field_540894758e576'),
(1222, 1717, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1223, 1717, '_home_callout_paragraph', 'field_5408958c8e579'),
(1224, 1717, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1225, 1717, '_home_callout_button_link', 'field_540895af8e57a'),
(1226, 1717, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1227, 1717, '_home_main_title', 'field_5408cd723d59f'),
(1228, 1717, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.'),
(1229, 1717, '_home_main_body', 'field_5408cd833d5a0'),
(1230, 1717, 'home_main_link_text', 'More About BH Defense'),
(1231, 1717, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1232, 1717, 'home_main_link', 'http://kmdig.com/client/bhdefense/about'),
(1233, 1717, '_home_main_link', 'field_5408cdd33d5a2'),
(1234, 1717, 'page_sub_title', ''),
(1235, 1717, '_page_sub_title', 'field_52b1dbc2191b0'),
(1236, 1717, 'page_title_type', 'default'),
(1237, 1717, '_page_title_type', 'field_52b1e150191b1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1238, 1717, 'page_header_color', 'none'),
(1239, 1717, '_page_header_color', 'field_52b220f130496'),
(1240, 1718, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1241, 1718, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(1242, 1718, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1243, 1718, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1244, 1718, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1245, 1718, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1246, 1718, 'home_slider_0_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1247, 1718, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1248, 1718, 'home_slider_0_home_slider_image', '283'),
(1249, 1718, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1250, 1718, 'home_slider_0_home_slider_anim', ''),
(1251, 1718, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1252, 1718, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1253, 1718, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(1254, 1718, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1255, 1718, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1256, 1718, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1257, 1718, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1258, 1718, 'home_slider_1_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1259, 1718, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(1260, 1718, 'home_slider_1_home_slider_image', '281'),
(1261, 1718, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1262, 1718, 'home_slider_1_home_slider_anim', ''),
(1263, 1718, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1264, 1718, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1265, 1718, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1266, 1718, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1267, 1718, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1268, 1718, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1269, 1718, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(1270, 1718, 'home_slider_2_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1271, 1718, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1272, 1718, 'home_slider_2_home_slider_image', '282'),
(1273, 1718, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1274, 1718, 'home_slider_2_home_slider_anim', ''),
(1275, 1718, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1276, 1718, 'home_slider', '3'),
(1277, 1718, '_home_slider', 'field_53c8661caaa7a'),
(1278, 1718, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1279, 1718, '_home_callout_title', 'field_540894758e576'),
(1280, 1718, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1281, 1718, '_home_callout_paragraph', 'field_5408958c8e579'),
(1282, 1718, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1283, 1718, '_home_callout_button_link', 'field_540895af8e57a'),
(1284, 1718, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1285, 1718, '_home_main_title', 'field_5408cd723d59f'),
(1286, 1718, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.'),
(1287, 1718, '_home_main_body', 'field_5408cd833d5a0'),
(1288, 1718, 'home_main_link_text', 'Solutions for Every Type of Risk'),
(1289, 1718, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1290, 1718, 'home_main_link', 'http://kmdig.com/client/bhdefense/solutions'),
(1291, 1718, '_home_main_link', 'field_5408cdd33d5a2'),
(1292, 1718, 'page_sub_title', ''),
(1293, 1718, '_page_sub_title', 'field_52b1dbc2191b0'),
(1294, 1718, 'page_title_type', 'default'),
(1295, 1718, '_page_title_type', 'field_52b1e150191b1'),
(1296, 1718, 'page_header_color', 'none'),
(1297, 1718, '_page_header_color', 'field_52b220f130496'),
(1326, 1722, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1327, 1722, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(1328, 1722, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1329, 1722, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1330, 1722, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1331, 1722, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1332, 1722, 'home_slider_0_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1333, 1722, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1334, 1722, 'home_slider_0_home_slider_image', '1721'),
(1335, 1722, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1336, 1722, 'home_slider_0_home_slider_anim', ''),
(1337, 1722, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1338, 1722, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1339, 1722, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(1340, 1722, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1341, 1722, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1342, 1722, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1343, 1722, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1344, 1722, 'home_slider_1_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1345, 1722, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(1346, 1722, 'home_slider_1_home_slider_image', '1719'),
(1347, 1722, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1348, 1722, 'home_slider_1_home_slider_anim', ''),
(1349, 1722, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1350, 1722, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1351, 1722, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1352, 1722, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1353, 1722, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1354, 1722, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1355, 1722, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(1356, 1722, 'home_slider_2_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1357, 1722, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1358, 1722, 'home_slider_2_home_slider_image', '1720'),
(1359, 1722, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1360, 1722, 'home_slider_2_home_slider_anim', ''),
(1361, 1722, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1362, 1722, 'home_slider', '3'),
(1363, 1722, '_home_slider', 'field_53c8661caaa7a'),
(1364, 1722, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1365, 1722, '_home_callout_title', 'field_540894758e576') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1366, 1722, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1367, 1722, '_home_callout_paragraph', 'field_5408958c8e579'),
(1368, 1722, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1369, 1722, '_home_callout_button_link', 'field_540895af8e57a'),
(1370, 1722, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1371, 1722, '_home_main_title', 'field_5408cd723d59f'),
(1372, 1722, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.'),
(1373, 1722, '_home_main_body', 'field_5408cd833d5a0'),
(1374, 1722, 'home_main_link_text', 'Solutions for Every Type of Risk'),
(1375, 1722, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1376, 1722, 'home_main_link', 'http://kmdig.com/client/bhdefense/solutions'),
(1377, 1722, '_home_main_link', 'field_5408cdd33d5a2'),
(1378, 1722, 'page_sub_title', ''),
(1379, 1722, '_page_sub_title', 'field_52b1dbc2191b0'),
(1380, 1722, 'page_title_type', 'default'),
(1381, 1722, '_page_title_type', 'field_52b1e150191b1'),
(1382, 1722, 'page_header_color', 'none'),
(1383, 1722, '_page_header_color', 'field_52b220f130496'),
(1388, 1725, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1389, 1725, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(1390, 1725, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1391, 1725, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1392, 1725, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1393, 1725, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1394, 1725, 'home_slider_0_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1395, 1725, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1396, 1725, 'home_slider_0_home_slider_image', '1721'),
(1397, 1725, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1398, 1725, 'home_slider_0_home_slider_anim', ''),
(1399, 1725, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1400, 1725, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1401, 1725, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(1402, 1725, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1403, 1725, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1404, 1725, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1405, 1725, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1406, 1725, 'home_slider_1_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1407, 1725, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(1408, 1725, 'home_slider_1_home_slider_image', '1723'),
(1409, 1725, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1410, 1725, 'home_slider_1_home_slider_anim', ''),
(1411, 1725, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1412, 1725, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1413, 1725, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1414, 1725, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1415, 1725, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1416, 1725, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1417, 1725, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(1418, 1725, 'home_slider_2_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1419, 1725, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1420, 1725, 'home_slider_2_home_slider_image', '1724'),
(1421, 1725, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1422, 1725, 'home_slider_2_home_slider_anim', ''),
(1423, 1725, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1424, 1725, 'home_slider', '3'),
(1425, 1725, '_home_slider', 'field_53c8661caaa7a'),
(1426, 1725, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1427, 1725, '_home_callout_title', 'field_540894758e576'),
(1428, 1725, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1429, 1725, '_home_callout_paragraph', 'field_5408958c8e579'),
(1430, 1725, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1431, 1725, '_home_callout_button_link', 'field_540895af8e57a'),
(1432, 1725, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1433, 1725, '_home_main_title', 'field_5408cd723d59f'),
(1434, 1725, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.'),
(1435, 1725, '_home_main_body', 'field_5408cd833d5a0'),
(1436, 1725, 'home_main_link_text', 'Solutions for Every Type of Risk'),
(1437, 1725, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1438, 1725, 'home_main_link', 'http://kmdig.com/client/bhdefense/solutions'),
(1439, 1725, '_home_main_link', 'field_5408cdd33d5a2'),
(1440, 1725, 'page_sub_title', ''),
(1441, 1725, '_page_sub_title', 'field_52b1dbc2191b0'),
(1442, 1725, 'page_title_type', 'default'),
(1443, 1725, '_page_title_type', 'field_52b1e150191b1'),
(1444, 1725, 'page_header_color', 'none'),
(1445, 1725, '_page_header_color', 'field_52b220f130496'),
(1446, 1726, '_wp_attached_file', 'slide-activated2.jpg'),
(1447, 1726, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:749;s:4:"file";s:20:"slide-activated2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"slide-activated2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"slide-activated2-300x118.jpg";s:5:"width";i:300;s:6:"height";i:118;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"slide-activated2-1024x403.jpg";s:5:"width";i:1024;s:6:"height";i:403;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:28:"slide-activated2-555x218.jpg";s:5:"width";i:555;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1448, 1727, '_wp_attached_file', 'slide-anticipated2.jpg'),
(1449, 1727, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:749;s:4:"file";s:22:"slide-anticipated2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"slide-anticipated2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"slide-anticipated2-300x118.jpg";s:5:"width";i:300;s:6:"height";i:118;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"slide-anticipated2-1024x403.jpg";s:5:"width";i:1024;s:6:"height";i:403;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:30:"slide-anticipated2-555x218.jpg";s:5:"width";i:555;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1450, 1728, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1451, 1728, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(1452, 1728, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1453, 1728, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1454, 1728, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1455, 1728, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1456, 1728, 'home_slider_0_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1457, 1728, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1458, 1728, 'home_slider_0_home_slider_image', '1721'),
(1459, 1728, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1460, 1728, 'home_slider_0_home_slider_anim', ''),
(1461, 1728, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1462, 1728, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1463, 1728, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(1464, 1728, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1465, 1728, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1466, 1728, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1467, 1728, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1468, 1728, 'home_slider_1_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1469, 1728, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1470, 1728, 'home_slider_1_home_slider_image', '1726'),
(1471, 1728, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1472, 1728, 'home_slider_1_home_slider_anim', ''),
(1473, 1728, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1474, 1728, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1475, 1728, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1476, 1728, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1477, 1728, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1478, 1728, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1479, 1728, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(1480, 1728, 'home_slider_2_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1481, 1728, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1482, 1728, 'home_slider_2_home_slider_image', '1727'),
(1483, 1728, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1484, 1728, 'home_slider_2_home_slider_anim', ''),
(1485, 1728, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1486, 1728, 'home_slider', '3'),
(1487, 1728, '_home_slider', 'field_53c8661caaa7a'),
(1488, 1728, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1489, 1728, '_home_callout_title', 'field_540894758e576'),
(1490, 1728, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1491, 1728, '_home_callout_paragraph', 'field_5408958c8e579'),
(1492, 1728, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1493, 1728, '_home_callout_button_link', 'field_540895af8e57a'),
(1494, 1728, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1495, 1728, '_home_main_title', 'field_5408cd723d59f'),
(1496, 1728, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.'),
(1497, 1728, '_home_main_body', 'field_5408cd833d5a0'),
(1498, 1728, 'home_main_link_text', 'Solutions for Every Type of Risk'),
(1499, 1728, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1500, 1728, 'home_main_link', 'http://kmdig.com/client/bhdefense/solutions'),
(1501, 1728, '_home_main_link', 'field_5408cdd33d5a2'),
(1502, 1728, 'page_sub_title', ''),
(1503, 1728, '_page_sub_title', 'field_52b1dbc2191b0'),
(1504, 1728, 'page_title_type', 'default'),
(1505, 1728, '_page_title_type', 'field_52b1e150191b1'),
(1506, 1728, 'page_header_color', 'none'),
(1507, 1728, '_page_header_color', 'field_52b220f130496'),
(1508, 1729, '_wp_attached_file', 'slide-identified.jpg'),
(1509, 1729, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:749;s:4:"file";s:20:"slide-identified.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"slide-identified-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"slide-identified-300x118.jpg";s:5:"width";i:300;s:6:"height";i:118;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"slide-identified-1024x403.jpg";s:5:"width";i:1024;s:6:"height";i:403;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:28:"slide-identified-555x218.jpg";s:5:"width";i:555;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1510, 1730, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1511, 1730, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b'),
(1512, 1730, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1513, 1730, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1514, 1730, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1515, 1730, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1516, 1730, 'home_slider_0_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1517, 1730, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1518, 1730, 'home_slider_0_home_slider_image', '1729'),
(1519, 1730, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1520, 1730, 'home_slider_0_home_slider_anim', ''),
(1521, 1730, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1522, 1730, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1523, 1730, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(1524, 1730, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1525, 1730, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1526, 1730, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1527, 1730, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1528, 1730, 'home_slider_1_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1529, 1730, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(1530, 1730, 'home_slider_1_home_slider_image', '1726'),
(1531, 1730, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1532, 1730, 'home_slider_1_home_slider_anim', ''),
(1533, 1730, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1534, 1730, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1535, 1730, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1536, 1730, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1537, 1730, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1538, 1730, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1539, 1730, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(1540, 1730, 'home_slider_2_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1541, 1730, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1542, 1730, 'home_slider_2_home_slider_image', '1727'),
(1543, 1730, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1544, 1730, 'home_slider_2_home_slider_anim', ''),
(1545, 1730, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1546, 1730, 'home_slider', '3'),
(1547, 1730, '_home_slider', 'field_53c8661caaa7a'),
(1548, 1730, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1549, 1730, '_home_callout_title', 'field_540894758e576'),
(1550, 1730, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1551, 1730, '_home_callout_paragraph', 'field_5408958c8e579'),
(1552, 1730, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1553, 1730, '_home_callout_button_link', 'field_540895af8e57a'),
(1554, 1730, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1555, 1730, '_home_main_title', 'field_5408cd723d59f'),
(1556, 1730, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.'),
(1557, 1730, '_home_main_body', 'field_5408cd833d5a0'),
(1558, 1730, 'home_main_link_text', 'Solutions for Every Type of Risk'),
(1559, 1730, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1560, 1730, 'home_main_link', 'http://kmdig.com/client/bhdefense/solutions'),
(1561, 1730, '_home_main_link', 'field_5408cdd33d5a2'),
(1562, 1730, 'page_sub_title', ''),
(1563, 1730, '_page_sub_title', 'field_52b1dbc2191b0'),
(1564, 1730, 'page_title_type', 'default'),
(1565, 1730, '_page_title_type', 'field_52b1e150191b1'),
(1566, 1730, 'page_header_color', 'none'),
(1567, 1730, '_page_header_color', 'field_52b220f130496'),
(1568, 1731, 'home_slider_0_home_slider_title', 'IDENTIFIED'),
(1569, 1731, '_home_slider_0_home_slider_title', 'field_53c86636aaa7b') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1570, 1731, 'home_slider_0_home_slider_sub_title', 'Critical infrastructure risks:'),
(1571, 1731, '_home_slider_0_home_slider_sub_title', 'field_53c86671aaa7c'),
(1572, 1731, 'home_slider_0_home_slider_btn_title', 'Learn More'),
(1573, 1731, '_home_slider_0_home_slider_btn_title', 'field_53c86687aaa7d'),
(1574, 1731, 'home_slider_0_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1575, 1731, '_home_slider_0_home_slider_btn_link', 'field_53c86692aaa7e'),
(1576, 1731, 'home_slider_0_home_slider_image', '1729'),
(1577, 1731, '_home_slider_0_home_slider_image', 'field_53c866bcaaa7f'),
(1578, 1731, 'home_slider_0_home_slider_anim', ''),
(1579, 1731, '_home_slider_0_home_slider_anim', 'field_53d807ed4fd6f'),
(1580, 1731, 'home_slider_1_home_slider_title', 'ACTIVATED'),
(1581, 1731, '_home_slider_1_home_slider_title', 'field_53c86636aaa7b'),
(1582, 1731, 'home_slider_1_home_slider_sub_title', 'Security and safeguards:'),
(1583, 1731, '_home_slider_1_home_slider_sub_title', 'field_53c86671aaa7c'),
(1584, 1731, 'home_slider_1_home_slider_btn_title', 'Learn More'),
(1585, 1731, '_home_slider_1_home_slider_btn_title', 'field_53c86687aaa7d'),
(1586, 1731, 'home_slider_1_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1587, 1731, '_home_slider_1_home_slider_btn_link', 'field_53c86692aaa7e'),
(1588, 1731, 'home_slider_1_home_slider_image', '1726'),
(1589, 1731, '_home_slider_1_home_slider_image', 'field_53c866bcaaa7f'),
(1590, 1731, 'home_slider_1_home_slider_anim', ''),
(1591, 1731, '_home_slider_1_home_slider_anim', 'field_53d807ed4fd6f'),
(1592, 1731, 'home_slider_2_home_slider_title', 'ANTICIPATED'),
(1593, 1731, '_home_slider_2_home_slider_title', 'field_53c86636aaa7b'),
(1594, 1731, 'home_slider_2_home_slider_sub_title', 'Emerging threats and challenges:'),
(1595, 1731, '_home_slider_2_home_slider_sub_title', 'field_53c86671aaa7c'),
(1596, 1731, 'home_slider_2_home_slider_btn_title', 'Learn More'),
(1597, 1731, '_home_slider_2_home_slider_btn_title', 'field_53c86687aaa7d'),
(1598, 1731, 'home_slider_2_home_slider_btn_link', 'http://kmdig.com/client/bhdefense/about'),
(1599, 1731, '_home_slider_2_home_slider_btn_link', 'field_53c86692aaa7e'),
(1600, 1731, 'home_slider_2_home_slider_image', '1727'),
(1601, 1731, '_home_slider_2_home_slider_image', 'field_53c866bcaaa7f'),
(1602, 1731, 'home_slider_2_home_slider_anim', ''),
(1603, 1731, '_home_slider_2_home_slider_anim', 'field_53d807ed4fd6f'),
(1604, 1731, 'home_slider', '3'),
(1605, 1731, '_home_slider', 'field_53c8661caaa7a'),
(1606, 1731, 'home_callout_title', 'We attack your risks  before they attack your success.'),
(1607, 1731, '_home_callout_title', 'field_540894758e576'),
(1608, 1731, 'home_callout_paragraph', 'Cyber threats. Natural disasters. Supply chain disruption. Extreme environments.'),
(1609, 1731, '_home_callout_paragraph', 'field_5408958c8e579'),
(1610, 1731, 'home_callout_button_link', 'http://kmdig.com/client/bhdefense/about'),
(1611, 1731, '_home_callout_button_link', 'field_540895af8e57a'),
(1612, 1731, 'home_main_title', 'Mitigating Risk in Difficult Places.'),
(1613, 1731, '_home_main_title', 'field_5408cd723d59f'),
(1614, 1731, 'home_main_body', 'BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.'),
(1615, 1731, '_home_main_body', 'field_5408cd833d5a0'),
(1616, 1731, 'home_main_link_text', 'Solutions for Every Type of Risk'),
(1617, 1731, '_home_main_link_text', 'field_5408cdb03d5a1'),
(1618, 1731, 'home_main_link', 'http://kmdig.com/client/bhdefense/solutions'),
(1619, 1731, '_home_main_link', 'field_5408cdd33d5a2'),
(1620, 1731, 'page_sub_title', ''),
(1621, 1731, '_page_sub_title', 'field_52b1dbc2191b0'),
(1622, 1731, 'page_title_type', 'default'),
(1623, 1731, '_page_title_type', 'field_52b1e150191b1'),
(1624, 1731, 'page_header_color', 'none'),
(1625, 1731, '_page_header_color', 'field_52b220f130496'),
(1626, 1732, '_wp_attached_file', 'header-sample.jpg'),
(1627, 1732, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:300;s:4:"file";s:17:"header-sample.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"header-sample-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"header-sample-300x46.jpg";s:5:"width";i:300;s:6:"height";i:46;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"header-sample-1024x160.jpg";s:5:"width";i:1024;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"header-sample-555x86.jpg";s:5:"width";i:555;s:6:"height";i:86;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1628, 1733, '_wp_attached_file', 'header-sample2.jpg'),
(1629, 1733, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:300;s:4:"file";s:18:"header-sample2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"header-sample2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"header-sample2-300x46.jpg";s:5:"width";i:300;s:6:"height";i:46;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"header-sample2-1024x160.jpg";s:5:"width";i:1024;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"header-sample2-555x86.jpg";s:5:"width";i:555;s:6:"height";i:86;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1630, 1734, '_wp_attached_file', 'header-sample3.jpg'),
(1631, 1734, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:300;s:4:"file";s:18:"header-sample3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"header-sample3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"header-sample3-300x46.jpg";s:5:"width";i:300;s:6:"height";i:46;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"header-sample3-1024x160.jpg";s:5:"width";i:1024;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"header-sample3-555x86.jpg";s:5:"width";i:555;s:6:"height";i:86;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(1632, 15, '_thumbnail_id', '1732'),
(1633, 15, 'page_sub_title', ''),
(1634, 15, '_page_sub_title', 'field_52b1dbc2191b0'),
(1635, 15, 'page_title_type', 'default'),
(1636, 15, '_page_title_type', 'field_52b1e150191b1'),
(1637, 15, 'page_header_color', 'none'),
(1638, 15, '_page_header_color', 'field_52b220f130496') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1736 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-08-25 14:40:49', '2014-08-25 14:40:49', 'WordPress is an award-winning web software, used by millions of webmasters worldwide for building their website or blog. SiteGround is proud to host this particular WordPress installation and provide users with multiple resources to facilitate the management of their WP websites:\r\n<h3>Expert <a href="http://www.siteground.com/wordpress-hosting.htm">WordPress Hosting</a></h3>\r\nSiteGround provides superior WordPress hosting focused on speed, security and customer service. We take care of WordPress sites security with unique server-level customizations, WP auto-updates, and daily backups. We make them faster by regularly upgrading our hardware, offering free CDN with Railgun and developing our SuperCacher that speeds sites up to 100 times! And last but not least, we provide real WordPress help 24/7! Learn more about SiteGround WordPress hosting\r\n<h3>Wordpress tutorial and knowledgebase articles</h3>\r\nWordPress is considered an easy to work with software. Yet, if you are a beginner you might need some help, or you might be looking for tweaks that do not come naturally even to more advanced users. SiteGround <a href="http://www.siteground.com/tutorials/wordpress/">WordPress tutorial</a> includes installation and theme change instructions, management of WordPress plugins, manual upgrade and backup creation, and more. If you are looking for a more rare setup or modification, you may visit <a href="http://kb.siteground.com">SiteGround Knowledgebase</a>.\r\n<h3><a href="http://www.siteground.com/wordpress-hosting/wordpress-themes.htm">Free WordPress themes</a></h3>\r\nSiteGround experts not only develop various solutions for WordPress sites, but also create unique designs that you could download for free. SiteGround WordPress themes are easy to customize for the particular use of the webmaster.', 'WordPress Resources at SiteGround', '', 'trash', 'open', 'open', '', 'wordpress-resources-at-siteground', '', '', '2014-08-25 14:43:30', '2014-08-25 14:43:30', '', 0, '', 0, 'post', '', 0),
(3, 1, '2014-08-25 14:43:30', '2014-08-25 14:43:30', 'WordPress is an award-winning web software, used by millions of webmasters worldwide for building their website or blog. SiteGround is proud to host this particular WordPress installation and provide users with multiple resources to facilitate the management of their WP websites:\r\n<h3>Expert <a href="http://www.siteground.com/wordpress-hosting.htm">WordPress Hosting</a></h3>\r\nSiteGround provides superior WordPress hosting focused on speed, security and customer service. We take care of WordPress sites security with unique server-level customizations, WP auto-updates, and daily backups. We make them faster by regularly upgrading our hardware, offering free CDN with Railgun and developing our SuperCacher that speeds sites up to 100 times! And last but not least, we provide real WordPress help 24/7! Learn more about SiteGround WordPress hosting\r\n<h3>Wordpress tutorial and knowledgebase articles</h3>\r\nWordPress is considered an easy to work with software. Yet, if you are a beginner you might need some help, or you might be looking for tweaks that do not come naturally even to more advanced users. SiteGround <a href="http://www.siteground.com/tutorials/wordpress/">WordPress tutorial</a> includes installation and theme change instructions, management of WordPress plugins, manual upgrade and backup creation, and more. If you are looking for a more rare setup or modification, you may visit <a href="http://kb.siteground.com">SiteGround Knowledgebase</a>.\r\n<h3><a href="http://www.siteground.com/wordpress-hosting/wordpress-themes.htm">Free WordPress themes</a></h3>\r\nSiteGround experts not only develop various solutions for WordPress sites, but also create unique designs that you could download for free. SiteGround WordPress themes are easy to customize for the particular use of the webmaster.', 'WordPress Resources at SiteGround', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-08-25 14:43:30', '2014-08-25 14:43:30', '', 1, 'http://kmdig.com/client/bhdefense/?p=3', 0, 'revision', '', 0),
(5, 1, '2014-08-24 15:39:18', '2014-08-24 19:39:18', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2014-09-08 12:03:37', '2014-09-08 16:03:37', '', 0, 'http://kmdig.com/client/bhdefense/?page_id=5', -1, 'page', '', 0),
(6, 1, '2014-08-25 15:39:18', '2014-08-25 15:39:18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum consequat, orci ac laoreet cursus, dolor sem luctus lorem, eget consequat magna felis a magna. Aliquam scelerisque condimentum ante, eget facilisis tortor lobortis in. In interdum venenatis justo eget consequat. Morbi commodo rhoncus mi nec pharetra. Aliquam erat volutpat. Mauris non lorem eu dolor hendrerit dapibus. Mauris mollis nisl quis sapien posuere consectetur. Nullam in sapien at nisi ornare bibendum at ut lectus. Pellentesque ut magna mauris. Nam viverra suscipit ligula, sed accumsan enim placerat nec. Cras vitae metus vel dolor ultrices sagittis. Duis venenatis augue sed risus laoreet congue ac ac leo. Donec fermentum accumsan libero sit amet iaculis. Duis tristique dictum enim, ac fringilla risus bibendum in. Nunc ornare, quam sit amet ultricies gravida, tortor mi malesuada urna, quis commodo dui nibh in lacus. Nunc vel tortor mi. Pellentesque vel urna a arcu adipiscing imperdiet vitae sit amet neque. Integer eu lectus et nunc dictum sagittis. Curabitur commodo vulputate fringilla. Sed eleifend, arcu convallis adipiscing congue, dui turpis commodo magna, et vehicula sapien turpis sit amet nisi.', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:39:18', '2014-08-25 15:39:18', '', 5, 'http://kmdig.com/client/bhdefense/?p=6', 0, 'revision', '', 0),
(7, 1, '2014-08-25 15:39:18', '2014-08-25 15:39:18', ' ', '', '', 'publish', 'open', 'open', '', '7', '', '', '2014-09-05 09:47:17', '2014-09-05 13:47:17', '', 0, 'http://kmdig.com/client/bhdefense/7/', 1, 'nav_menu_item', '', 0),
(8, 1, '2014-08-25 15:36:12', '2014-08-25 19:36:12', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-autosave-v1', '', '', '2014-08-25 15:36:12', '2014-08-25 19:36:12', '', 5, 'http://kmdig.com/client/bhdefense/5-autosave-v1/', 0, 'revision', '', 0),
(9, 1, '2014-08-25 15:51:34', '2014-08-25 15:51:34', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n\r\nMitigating Risk in Difficult Places.\r\n<p class="p1"><span class="s1">BH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. </span></p>\r\n<p class="p2"></p>\r\n<p class="p1"><span class="s2"><b>With a track record of 100% success</b></span><span class="s1"> in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers </span><span class="s2">air-tight plans</span><span class="s1"> for securing every facet of critical infrastructure.  <i>Plus</i> BH Defense uses hands-on expertise with security, logistics, training and construction to </span><span class="s2">put those plans into action</span><span class="s1">—fast and flawlessly.  </span></p>\r\n<p class="p2"></p>\r\n<p class="p1"><span class="s1">From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success <i>no matter what</i></span></p>\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\nSee how BH Defense mitigates risks in specific industries:\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\nTechnology Partners', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:51:34', '2014-08-25 15:51:34', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2014-08-25 15:51:50', '2014-08-25 15:51:50', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n\r\nMitigating Risk in Difficult Places.\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what\r\n---\r\n\r\nSee how BH Defense mitigates risks in specific industries:\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\nTechnology Partners', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:51:50', '2014-08-25 15:51:50', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2014-08-25 15:52:44', '2014-08-25 15:52:44', '', 'airpatrol', '', 'inherit', 'open', 'open', '', 'airpatrol', '', '', '2014-08-25 15:52:44', '2014-08-25 15:52:44', '', 5, 'http://kmdig.com/client/bhdefense/media/airpatrol.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2014-08-25 15:52:45', '2014-08-25 15:52:45', '', 'bosch', '', 'inherit', 'open', 'open', '', 'bosch', '', '', '2014-08-25 15:52:45', '2014-08-25 15:52:45', '', 5, 'http://kmdig.com/client/bhdefense/media/bosch.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2014-08-25 15:52:45', '2014-08-25 15:52:45', '', 'nflabs', '', 'inherit', 'open', 'open', '', 'nflabs', '', '', '2014-08-25 15:52:45', '2014-08-25 15:52:45', '', 5, 'http://kmdig.com/client/bhdefense/media/nflabs.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2014-08-25 15:53:29', '2014-08-25 15:53:29', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> \r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:53:29', '2014-08-25 15:53:29', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2014-08-25 15:55:34', '2014-08-25 15:55:34', '<h2>BH Defense: Battle-Tested and Big on Details</h2>\r\n<strong>BH Defense LLC is a small, agile security firm</strong> with the expertise to attack big risks for government, military and commercial enterprises anywhere in the world. Since 2004, we’ve achieved 100% success on projects to mitigate clients’ risks and “get the job done” with security, logistics, O&amp;M, construction, training and project management under the most difficult conditions.\r\n<blockquote>\r\n<p style="text-align: right;">“We’ve never failed on a project because we’ve never failed to play out even the smallest details that could put people, assets and success at risk.”</p>\r\n</blockquote>\r\n<p style="text-align: right;"><strong>Charley Dublin</strong>\r\n<strong> BH Defense CEO</strong></p>\r\n<strong>With end-to-end risk mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise.</strong> From the world of international business, to remote areas and developing nations, we understand where threats exist and how to mitigate them. In fact, because of the expertise we apply to risk identification and mitigation—plus our battle-tested, on-the-ground experience in getting things done— BH Defense is the only U.S. government contractor continuing full support operations during the current crisis in Iraq.\r\n<h3>BH Defense at a Glance</h3>\r\n<ul>\r\n	<li><strong>Capabilities:</strong> Critical infrastructure risk assessment and enterprise risk mitigation planning. On-the-ground execution, including: physical, personnel, IT and Ether security; logistics; project management; construction and training.</li>\r\n	<li><strong>Personnel:</strong> Expertise is concentrated in a small, elite team of senior risk mitigation specialists and engineers who have led achieved success with projects in the world’s most challenging business, political, and geographic environments. In addition, we currently employ a global network of more than 50 full-time, fully vetted personnel from five different countries and can quickly deploy technical, professional, and security personnel to meet clients’ needs as they arise.</li>\r\n	<li><strong>Reach:</strong> with the ability to deliver end-to-end mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise from threats that include contamination, natural disasters, power disruption, hackers, criminals, terrorists and insider threats. This reach is vital because today’s critical infrastructure is so interdependent that BH Defense can deliver truly custom risk mitigation plans and also deliver on everything needed to put them into action.</li>\r\n	<li><strong>Locations:</strong> BH Defense is headquartered in Arlington, Virginia with offices in Baghdad, Iraq; Amman, Jordan; and Limassol, Cyprus.</li>\r\n</ul>', 'About', '', 'publish', 'closed', 'open', '', 'about', '', '', '2014-09-08 15:53:09', '2014-09-08 19:53:09', '', 0, 'http://kmdig.com/client/bhdefense/?page_id=15', 0, 'page', '', 0),
(16, 1, '2014-08-25 15:55:34', '2014-08-25 15:55:34', '', 'About', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-08-25 15:55:34', '2014-08-25 15:55:34', '', 15, 'http://kmdig.com/client/bhdefense/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2014-08-25 15:55:43', '2014-08-25 15:55:43', '', 'Overview', '', 'trash', 'closed', 'closed', '', 'overview', '', '', '2014-08-25 15:02:14', '2014-08-25 19:02:14', '', 15, 'http://kmdig.com/client/bhdefense/?page_id=17', 0, 'page', '', 0),
(18, 1, '2014-08-25 15:55:43', '2014-08-25 15:55:43', '', 'Overview', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2014-08-25 15:55:43', '2014-08-25 15:55:43', '', 17, 'http://kmdig.com/client/bhdefense/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2014-08-25 15:55:50', '2014-08-25 15:55:50', '<h2>BH Defense: A Broader Vision for Mitigating Risk</h2>\r\n<strong>BH Defense LLC is led by senior risk mitigation specialists and engineers</strong>. We are leading consultants in the field and we’re seasoned “on the ground,” ready to roll up our sleeves and clear away risks to improve the certainty of success even in the most difficult environments.\r\n<h3>BH Defense Leadership Team</h3>\r\nC. Dublin, CEO\r\n\r\n<span style="color: #ff0000;">Here, run short bios for the core team – 6? This can be done by listing titles OR, by listing area of expertise (Infrastructure Support, Construction Operations, Engineering and Services) and then listing the person in charge of that area. TO COME FROM BH DEFENSE</span>', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 15, 'http://kmdig.com/client/bhdefense/?page_id=19', 0, 'page', '', 0),
(20, 1, '2014-08-25 15:55:50', '2014-08-25 15:55:50', '', 'Our Team', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2014-08-25 15:55:50', '2014-08-25 15:55:50', '', 19, 'http://kmdig.com/client/bhdefense/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2014-08-25 15:56:01', '2014-08-25 15:56:01', '<h2>BH Defense: Pursuing ISO Certification</h2>\r\nBH Defense is well-underway with ISO certification for the quality assurance program that backs our risk-mitigation methodology. This is virtually unheard of in this field.\r\n\r\nOther companies may have ISO certification for pieces of the risk-management continuum, but BH Defense is being ISO <strong>certified across its entire risk-mitigation methodology.</strong>\r\n\r\n<strong>BH Defense and the ISO Certification process</strong>\r\n\r\n<span style="color: #ff0000;">Run a general paragraph about what ISO Certification is in this particular field – i.e. how you are asked to prove quality assurance within your methodology. Include a sentence about any dates on a timeline for completion.</span>', 'ISO Certification', '', 'publish', 'closed', 'closed', '', 'iso-certification', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 15, 'http://kmdig.com/client/bhdefense/?page_id=21', 0, 'page', '', 0),
(22, 1, '2014-08-25 15:56:01', '2014-08-25 15:56:01', '', 'ISO Certification', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2014-08-25 15:56:01', '2014-08-25 15:56:01', '', 21, 'http://kmdig.com/client/bhdefense/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2014-08-25 15:56:11', '2014-08-25 15:56:11', '<h2>BH Defense: Solutions for Every Type of Risk</h2>\r\n<strong>BH Defense offers battle-tested solutions for improving the certainty of success.</strong> We are experts at integrating security and risk mitigation into custom solutions.\r\n\r\nAs consultants, systems specialists and engineers, we identify critical infrastructure, rank that infrastructure in terms of value and vulnerabilities, and evaluate the enterprise’s capability to operate despite threats. We then create a strong risk mitigation plan and “hit the ground running” to put that plan into action quickly to ensure security—and success.  <a title="How We Work" href="http://kmdig.com/client/bhdefense/solutions/how-we-work/">Learn more about how BH Defense Works</a>.\r\n<ul>\r\n	<li>Consulting</li>\r\n	<li>Security</li>\r\n	<li>Logistics &amp; Supply Chain</li>\r\n	<li>Project Management</li>\r\n	<li>Construction Management</li>\r\n	<li>Training</li>\r\n</ul>\r\n<a title="Customers" href="http://kmdig.com/client/bhdefense/customers/"><em><strong> See how BH Defense solutions respond to the needs in different types of enterprises</strong></em></a>', 'Solutions', '', 'publish', 'closed', 'open', '', 'solutions', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 0, 'http://kmdig.com/client/bhdefense/?page_id=23', 0, 'page', '', 0),
(24, 1, '2014-08-25 15:56:11', '2014-08-25 15:56:11', '', 'Solutions', '', 'inherit', 'open', 'open', '', '23-revision-v1', '', '', '2014-08-25 15:56:11', '2014-08-25 15:56:11', '', 23, 'http://kmdig.com/client/bhdefense/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2014-08-25 15:56:27', '2014-08-25 15:56:27', '<h2>How BH Defense Works</h2>\r\n<strong>BH Defense identifies and integrates end-to-end risk mitigation resources.</strong> Our risk mitigation methodology includes consulting, execution and monitoring/evolution of safeguards and we tailor our deliverables for each client’s unique environment, goals and operational needs.\r\n\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE: a little more about how you can scale or focus capabilities depending on what a client works. Give example of how quickly a simple project can be underway. Perhaps give an example of the timeframe of a more complex project where it’s critical to get a response right away.</span>\r\n<ol>\r\n	<li>Consulting/Assessment:\r\n<ul>\r\n	<li>Threat assessment</li>\r\n	<li>Mitigation plan</li>\r\n	<li>Mitigation plan drives recommendations: technology, products, services, practices</li>\r\n</ul>\r\n</li>\r\n	<li>Execution:\r\n<ul>\r\n	<li>Guns, guards, gates</li>\r\n	<li>Background checks (knowing who your employees really are)</li>\r\n	<li>IT security for the network and data</li>\r\n	<li>Ether security for making the invisible visible</li>\r\n</ul>\r\n</li>\r\n	<li>Monitoring and continuing evolution\r\n<ul>\r\n	<li>Where new threats/risks are emerging</li>\r\n	<li>Where new technologies can strengthen risk protection</li>\r\n</ul>\r\n</li>\r\n</ol>', 'How We Work', '', 'publish', 'closed', 'open', '', 'how-we-work', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 23, 'http://kmdig.com/client/bhdefense/?page_id=25', 0, 'page', '', 0),
(26, 1, '2014-08-25 15:56:27', '2014-08-25 15:56:27', '', 'How We Work', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-08-25 15:56:27', '2014-08-25 15:56:27', '', 25, 'http://kmdig.com/client/bhdefense/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2014-08-25 15:56:40', '2014-08-25 15:56:40', '<h2>BH Defense Consulting Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE: a short paragraph on how you approach consulting , and then a last couple sentences something like “Our consultations cover all the bases—including risks that clients might not have thought about. The risk assessments and mitigation plans we deliver are thorough because we address so many possible risks and integrate so many powerful protections, including:[EDIT THE LIST FROM THE EXISTING WEBSITE AS APPROPRIATE:]</span>\r\n<ul class="ul1">\r\n	<li>Operations and Maintenance (O&amp;M), Supply Chain Management, and Secure Logistics Support </li>\r\n	<li>Risk Mitigation Program Design, Management, and Execution\r\n<ul class="ul2">\r\n	<li>Risk Analysis, Planning, Program Implementation</li>\r\n	<li>Close Personal Protection (CPP) Program Development</li>\r\n	<li>Physical Protection System Implementation (design, procurement, installation, operation, maintenance and repair)</li>\r\n	<li>Business Intelligence</li>\r\n	<li>Training</li>\r\n</ul>\r\n</li>\r\n	<li>Construction and Logistics</li>\r\n	<li>Project Management</li>\r\n	<li>Engineering Services</li>\r\n	<li>Quality Control</li>\r\n	<li>Supply Chain logistics and management</li>\r\n	<li>PPS Design, Procurement, Installation, Testing, Operation, Maintenance and Repair for the following:\r\n<ul class="ul2">\r\n	<li>CCTV systems</li>\r\n	<li>Intrusion-detection systems</li>\r\n	<li>Integrated Alarm, assessment, surveillance, and communication systems</li>\r\n	<li>Communications equipment</li>\r\n	<li>Personnel access control and inspection equipment</li>\r\n	<li>Package and material inspection equipment</li>\r\n	<li>Vehicle inspection equipment</li>\r\n	<li>Security lighting</li>\r\n	<li>Emergency power or auxiliary power supplies</li>\r\n	<li>Keys and locks</li>\r\n</ul>\r\n</li>\r\n	<li>Physical Protection System (PPS) Services</li>\r\n</ul>', 'Consulting', '', 'publish', 'closed', 'open', '', 'consulting', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 23, 'http://kmdig.com/client/bhdefense/?page_id=27', 0, 'page', '', 0),
(28, 1, '2014-08-25 15:56:40', '2014-08-25 15:56:40', '', 'Consulting', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2014-08-25 15:56:40', '2014-08-25 15:56:40', '', 27, 'http://kmdig.com/client/bhdefense/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2014-08-25 15:56:55', '2014-08-25 15:56:55', '<h2>BH Defense Security Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>\r\n\r\nelaborate on what’s on the website <em>[BH Defense LLC provides critical infrastructure protection, facilities security, personal protection operations, physical protection systems (PPS), security construction, and transportation security operations in difficult or hostile environments.]</em> and add new copy, including: because of our long track record of military experience and strong vendor relationships, BH Defense can find solutions to <strong>any risk scenario</strong> by deploying proven solutions in new ways and giving clients access to advanced, reliable, and perfect-fit technologies that aren’t yet mainstream in non-military markets. (Examples: Air Patrol, advanced building automation solutions, BOSCH technology and suite of projects).', 'Security', '', 'publish', 'closed', 'open', '', 'security', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 23, 'http://kmdig.com/client/bhdefense/?page_id=29', 0, 'page', '', 0),
(30, 1, '2014-08-25 15:56:55', '2014-08-25 15:56:55', '', 'Security', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-08-25 15:56:55', '2014-08-25 15:56:55', '', 29, 'http://kmdig.com/client/bhdefense/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2014-08-25 15:57:31', '2014-08-25 15:57:31', '<h2>BH Defense Logistics &amp; Supply Chain Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>', 'Logistics/Supply Chain', '', 'publish', 'closed', 'open', '', 'logistics-supply-chain', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 23, 'http://kmdig.com/client/bhdefense/?page_id=31', 0, 'page', '', 0),
(32, 1, '2014-08-25 15:57:31', '2014-08-25 15:57:31', '', 'Logistics/Supply Chain', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2014-08-25 15:57:31', '2014-08-25 15:57:31', '', 31, 'http://kmdig.com/client/bhdefense/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2014-08-25 15:57:54', '2014-08-25 15:57:54', '<h2>BH Defense Project Management Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>', 'Project Management', '', 'publish', 'closed', 'open', '', 'project-management', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 23, 'http://kmdig.com/client/bhdefense/?page_id=33', 0, 'page', '', 0),
(34, 1, '2014-08-25 15:57:54', '2014-08-25 15:57:54', '', 'Project Management', '', 'inherit', 'open', 'open', '', '33-revision-v1', '', '', '2014-08-25 15:57:54', '2014-08-25 15:57:54', '', 33, 'http://kmdig.com/client/bhdefense/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2014-08-25 15:58:04', '2014-08-25 15:58:04', '<h2>BH Defense Construction Management Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>', 'Construction', '', 'publish', 'closed', 'open', '', 'construction', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 23, 'http://kmdig.com/client/bhdefense/?page_id=35', 0, 'page', '', 0),
(36, 1, '2014-08-25 15:58:04', '2014-08-25 15:58:04', '', 'Construction', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2014-08-25 15:58:04', '2014-08-25 15:58:04', '', 35, 'http://kmdig.com/client/bhdefense/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2014-08-25 15:58:16', '2014-08-25 15:58:16', '<h2>BH Defense Training Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>', 'Training', '', 'publish', 'closed', 'open', '', 'training', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 23, 'http://kmdig.com/client/bhdefense/?page_id=37', 0, 'page', '', 0),
(38, 1, '2014-08-25 15:58:16', '2014-08-25 15:58:16', '', 'Training', '', 'inherit', 'open', 'open', '', '37-revision-v1', '', '', '2014-08-25 15:58:16', '2014-08-25 15:58:16', '', 37, 'http://kmdig.com/client/bhdefense/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2014-08-25 15:58:31', '2014-08-25 15:58:31', '<h2>Why do you need a risk mitigation partner now?</h2>\r\n<strong>The only thing growing faster than today’s opportunities are today’s risks.</strong> Political and religious differences have turned many areas of the world into war zones. In addition, business (like warfare itself) is becoming asymmetrical with new types of threats emerging out of nowhere.\r\n\r\n<a title="Why Choose Us" href="http://kmdig.com/client/bhdefense/the-stakes/why-choose-us/">Why Partner with BHD Now?</a>\r\n<p style="text-align: right;"><em>Risk Calculator: Which Risks Could Undercut Your Success and How Much Could they Cost You? </em><span style="color: rgb(255, 0, 0);">(To come from BHD – a checklist with some facts and figures plus types of risks and a call to action to contact BHD)</span></p>\r\n3 factors that raise the stakes—and ROI— for risk mitigation\r\n<ol>\r\n	<li><strong>The prevalence of threats is growing.</strong> Traditional threats such as natural disasters, corruption, disgruntled employees and political or business espionage and sabotage can quickly disrupt any enterprise from a local business or small city to a multinational corporation or major government initiatives. In addition, new threats are emerging—from cyber attacks to new risks of contamination or power disruption.</li>\r\n	<li><strong>Enterprises are so technology dependent.</strong> Today, even a small network outage or security breach can bring operations to a standstill and leave people and sensitive information vulnerable. Plus, technology is increasingly being targeted by insiders and malicious hackers who may attack systems not for political or financial motivation, but simply for the recognition of hacking a high-profile or high-security system.</li>\r\n	<li><strong>Critical infrastructure has become so interdependent.</strong> If one aspect of infrastructure goes down it can affect everything. For example, a disruption in a region’s power supply can quickly disrupt the water supply, government services, healthcare, transportation, finance and communications.</li>\r\n</ol>\r\n<strong>What happens if risks<em> aren’t</em> mitigated?</strong> Not identifying, anticipating and mitigating risks can cost an enterprise everything. Lives can be at stake. So can money and infrastructure. Even a short disruption of service can derail a successful operation with negative PR, falling stock prices or public trust, regulatory violations, and more.\r\n\r\n<strong>That’s why BH Defense can make all the difference.</strong> We combine our own depth of experience with services offered by our vetted partners to find and mitigate risk across the enterprise and throughout the environment.', 'The Stakes', '', 'publish', 'closed', 'open', '', 'the-stakes', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 0, 'http://kmdig.com/client/bhdefense/?page_id=39', 0, 'page', '', 0),
(40, 1, '2014-08-25 15:58:31', '2014-08-25 15:58:31', '', 'The Stakes', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2014-08-25 15:58:31', '2014-08-25 15:58:31', '', 39, 'http://kmdig.com/client/bhdefense/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2014-08-25 15:58:46', '2014-08-25 15:58:46', '<h2>Why to Choose BH Defense as Your Security Partner</h2>\r\nNo company providing security systems, risk management, engineering and construction can surpass BH Defense’s record of performing successful engagements in the world’s most hazardous environments with ZERO serious injuries to employees, clients, partners or civilians.\r\n\r\nNo firm offers the consulting expertise to create an air-tight risk mitigation plan plus the “on the ground” experience and resources to execute that plan from start to finish and then to keep on monitoring performance and adapting equipment, construction, training, technology, policies and practices to neutralize new risks as they emerge.\r\n\r\nAnd no firm has better past performance—100% success on every project.\r\n<h3><strong> 9 reasons to trust BH Defense with your success:</strong></h3>\r\n<ol>\r\n	<li><strong>100% successful past performance.</strong> We have never failed on a project and there has never been a serious injury to civilians, employees or partners associated with our work. If BH Defense can deliver success — and safety— in Iraq, the company can do it in any environment.</li>\r\n	<li><strong>BH Defense’s depth of expertise</strong> with security, logistics, supply chain, construction management, project management and training translates to any organization that must deploy equipment, secure critical infrastructure, and protect people, assets and workflow—locally or worldwide.</li>\r\n	<li><strong>At the forefront of technology</strong>—BH Defense can find solutions to any risk scenario by deploying proven solutions in new ways and giving clients access to advanced, reliable, and perfect-fit technologies that aren’t yet mainstream in non-military markets.</li>\r\n	<li><strong>We excel at best value</strong> —creating custom solutions from COTS and preconfigured components.</li>\r\n	<li><strong>We know how to build from zero.</strong> Our experience amid devastation and lack of infrastructure in war zones, for instance, is of direct value in helping government and private organizations not only recover from the aftermath of a natural disaster like a hurricane, but to put plans in place ahead of time that make all the difference in getting back to “normal” faster.</li>\r\n	<li><strong>You get a plan plus a partner to execute that plan</strong>—we don’t produce recommendations and walk away. We take action to take of care risks and monitor new threats as they emerge.</li>\r\n	<li><strong>BH Defense is entirely vendor-neutral.</strong> This frees us to make the right risk mitigation recommendations, and it frees you to operate confidently— knowing you’ve gotten the absolute best solution at the absolute best value.</li>\r\n	<li><strong>BH Defense has been on the ground in Iraq —one of the world’s most hostile environments—since 2003.</strong> In fact, we’re the only US government support contractor continuing full support operations during the current crisis in Iraq. We thrive because we understand where threats exist and how to mitigate them, and we understand how to deliver when everything – including lives — depend on us getting everything right. And BH Defense always gets it right.</li>\r\n	<li><a title="ISO Certification" href="http://kmdig.com/client/bhdefense/about/iso-certification/"><strong>ISO Certification</strong></a> —BH Defense is well-underway with ISO certification for the quality assurance program that backs our risk-mitigation methodology. This is virtually unheard of in this field. Other companies may have pieces of ISO certification for pieces of the risk-management continuum, but BH Defense is being ISO certified across its entire risk-mitigation methodology.</li>\r\n</ol>', 'Why Choose Us', '', 'publish', 'closed', 'open', '', 'why-choose-us', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 39, 'http://kmdig.com/client/bhdefense/?page_id=41', 0, 'page', '', 0),
(42, 1, '2014-08-25 15:58:46', '2014-08-25 15:58:46', '', 'Why Choose Us', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2014-08-25 15:58:46', '2014-08-25 15:58:46', '', 41, 'http://kmdig.com/client/bhdefense/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2014-08-25 15:59:00', '2014-08-25 15:59:00', '', 'Measuring ROI', '', 'publish', 'closed', 'open', '', 'measuring-roi', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 39, 'http://kmdig.com/client/bhdefense/?page_id=43', 0, 'page', '', 0),
(44, 1, '2014-08-25 15:59:00', '2014-08-25 15:59:00', '', 'Measuring ROI', '', 'inherit', 'open', 'open', '', '43-revision-v1', '', '', '2014-08-25 15:59:00', '2014-08-25 15:59:00', '', 43, 'http://kmdig.com/client/bhdefense/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2014-08-25 15:59:17', '2014-08-25 15:59:17', '', 'Risk Calculator', '', 'publish', 'closed', 'open', '', 'risk-calculator', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 39, 'http://kmdig.com/client/bhdefense/?page_id=45', 0, 'page', '', 0),
(46, 1, '2014-08-25 15:59:17', '2014-08-25 15:59:17', '', 'Risk Calculator', '', 'inherit', 'open', 'open', '', '45-revision-v1', '', '', '2014-08-25 15:59:17', '2014-08-25 15:59:17', '', 45, 'http://kmdig.com/client/bhdefense/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2014-08-25 15:59:26', '2014-08-25 15:59:26', '<h2>BH Defense Removes Risks from Every Enterprise</h2>\r\nSince 2004, BH Defense has been building a risk mitigation methodology and track record that translates a wide range of government and commercial enterprises worldwide.\r\n<ul>\r\n	<li>\r\n<h3>IT &amp; Communications</h3>\r\n</li>\r\n	<li>\r\n<h3>Power (electric/oil/gas)</h3>\r\n</li>\r\n	<li>\r\n<h3>Water Supply</h3>\r\n</li>\r\n	<li>\r\n<h3>Government Services</h3>\r\n</li>\r\n	<li>\r\n<h3>Healthcare</h3>\r\n</li>\r\n	<li>\r\n<h3>Transportation</h3>\r\n</li>\r\n	<li>\r\n<h3>Finance/Banking</h3>\r\n</li>\r\n</ul>', 'Customers', '', 'publish', 'closed', 'open', '', 'customers', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 0, 'http://kmdig.com/client/bhdefense/?page_id=47', 0, 'page', '', 0),
(48, 1, '2014-08-25 15:59:26', '2014-08-25 15:59:26', '', 'Customers', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-08-25 15:59:26', '2014-08-25 15:59:26', '', 47, 'http://kmdig.com/client/bhdefense/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2014-08-25 15:59:44', '2014-08-25 15:59:44', '<h2>Risk Mitigation in IT &amp; Communications</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>In the area of IT &amp; Communications, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'IT & Communications', '', 'publish', 'closed', 'open', '', 'it-communications', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 47, 'http://kmdig.com/client/bhdefense/?page_id=49', 0, 'page', '', 0),
(50, 1, '2014-08-25 15:59:44', '2014-08-25 15:59:44', '', 'IT & Communications', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2014-08-25 15:59:44', '2014-08-25 15:59:44', '', 49, 'http://kmdig.com/client/bhdefense/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2014-08-25 15:59:58', '2014-08-25 15:59:58', '<h2>Risk Mitigation in Power Plants, Pipelines &amp; Utilities</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>In the area of Power (electric, gas, oil), BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Power (Electric/Oil/Gas)', '', 'publish', 'closed', 'open', '', 'power-electricoilgas', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 47, 'http://kmdig.com/client/bhdefense/?page_id=51', 0, 'page', '', 0),
(52, 1, '2014-08-25 15:59:58', '2014-08-25 15:59:58', '', 'Power (Electric/Oil/Gas)', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2014-08-25 15:59:58', '2014-08-25 15:59:58', '', 51, 'http://kmdig.com/client/bhdefense/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2014-08-25 16:00:15', '2014-08-25 16:00:15', '<h2>Risk Mitigation in the Water Supply</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\nTo protect the water supply, BH Defense can identify, anticipate and mitigate risks that include:\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Water Supply', '', 'publish', 'closed', 'open', '', 'water-supply', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 47, 'http://kmdig.com/client/bhdefense/?page_id=53', 0, 'page', '', 0),
(54, 1, '2014-08-25 16:00:15', '2014-08-25 16:00:15', '', 'Water Supply', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2014-08-25 16:00:15', '2014-08-25 16:00:15', '', 53, 'http://kmdig.com/client/bhdefense/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2014-08-25 16:00:26', '2014-08-25 16:00:26', '<h2>Risk Mitigation for Government Services</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>To prevent disruption of government services, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Government Services', '', 'publish', 'closed', 'open', '', 'government-services', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 47, 'http://kmdig.com/client/bhdefense/?page_id=55', 0, 'page', '', 0),
(56, 1, '2014-08-25 16:00:26', '2014-08-25 16:00:26', '', 'Government Services', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2014-08-25 16:00:26', '2014-08-25 16:00:26', '', 55, 'http://kmdig.com/client/bhdefense/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2014-08-25 16:00:35', '2014-08-25 16:00:35', '<h2>Risk Mitigation for Healthcare Enterprises</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>In the healthcare environment, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Healthcare', '', 'publish', 'closed', 'open', '', 'healthcare', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 47, 'http://kmdig.com/client/bhdefense/?page_id=57', 0, 'page', '', 0),
(58, 1, '2014-08-25 16:00:35', '2014-08-25 16:00:35', '', 'Healthcare', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2014-08-25 16:00:35', '2014-08-25 16:00:35', '', 57, 'http://kmdig.com/client/bhdefense/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2014-08-25 16:00:46', '2014-08-25 16:00:46', '<h2>Risk Mitigation for Transportation</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>To protect transportation services, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Transportation', '', 'publish', 'closed', 'open', '', 'transportation', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 47, 'http://kmdig.com/client/bhdefense/?page_id=59', 0, 'page', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(60, 1, '2014-08-25 16:00:46', '2014-08-25 16:00:46', '', 'Transportation', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2014-08-25 16:00:46', '2014-08-25 16:00:46', '', 59, 'http://kmdig.com/client/bhdefense/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2014-08-25 16:00:58', '2014-08-25 16:00:58', '<h2>Risk Mitigation for Finance &amp; Banking</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>To protect financial transactions and banking services, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Finance/Banking', '', 'publish', 'closed', 'open', '', 'financebanking', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 47, 'http://kmdig.com/client/bhdefense/?page_id=61', 0, 'page', '', 0),
(62, 1, '2014-08-25 16:00:58', '2014-08-25 16:00:58', '', 'Finance/Banking', '', 'inherit', 'open', 'open', '', '61-revision-v1', '', '', '2014-08-25 16:00:58', '2014-08-25 16:00:58', '', 61, 'http://kmdig.com/client/bhdefense/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2014-08-25 16:01:36', '2014-08-25 16:01:36', '<h2>Risk Mitigation News &amp; Resources from BH Defense</h2>\r\n<span style="color: #ff0000;">[To come from BH Defense-- news items –at least 5. Ideas:</span>\r\n<span style="color: #ff0000;"> The $12M MOD</span>\r\n<span style="color: #ff0000;"> Something on BOSCH</span>\r\n<span style="color: #ff0000;"> Something on Air Defense</span>\r\n<span style="color: #ff0000;"> Something on status of ISO certification</span>\r\n<span style="color: #ff0000;"> Something on new office? Expansion?</span>\r\n<span style="color: #ff0000;"> 10th Anniversary actively supporting government programs on the ground in Iraq]</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: short write up on Iraqi Children Foundation</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: one-pagers, whitepapers etc,. Here is the list from the branding platform for ideas:</span>\r\n<ul>\r\n	<li>Real-world examples of what happens without risk mitigation planning (maybe develop theoretical scenarios of the vulnerabilities at a Louisiana refinery and SCIF site and the consequences of not taking action)</li>\r\n	<li>Short examples of risks BH Defense spotted in interdependent critical infrastructure that the client didn’t see</li>\r\n	<li>Ether Security: We can make what’s invisible visible (What the technology is and why it’s critical)</li>\r\n	<li>20 things to do wrong in expanding overseas (why it’s critical to have a whole plan in place to handle not just supply chain, equipment and vehicles, but personnel, network security, etc.)</li>\r\n	<li>20 things to do wrong before a natural disaster strikes</li>\r\n	<li>20 things to do wrong in building out your new facility (a walk-through of what are the threats? What kind of damage could certain explosives or natural disasters cause? Etc. Talk about the need to go onsite as well as do the research, talk with vendors to come up with a plan that recommends full-spectrum risk mitigation: technology, physical security, personnel, building materials/construction techniques, etc. AND how it’s crucial to continue to manage the new facility so that it’s constructed, equipped, monitored and maintained in perfect alignment with the plan.</li>\r\n	<li>Beyond Guns, Guards and Gates: Dealing with Today’s Asymmetrical Threats</li>\r\n	<li>Big Threats for Little Businesses (the idea that corruption, partner power struggles, insider sabotage, competitor hacking, and natural disasters can threaten the life of a small company just the way they can a multinational corporation)</li>\r\n	<li>Threat vs. Risk: Can You Spot Them Before it’s Too Late? (educate about how a “potential sniper” is a threat, the “president” would be the identified asset, and the risk would be that the sniper might shoot the president. Show examples of these in all your audiences and explain that simply identifying isn’t enough – even having a plan isn’t enough. You need to put that plan into action.)</li>\r\n	<li>SCIF sites: When Gates, Guards and Policies aren’t enough – Ether security and why you use advanced military technologies: “In a SCIF, you can put a policy in place to prohibit radio-enabled devices like cell phones, cameras or laptops. But how do you control and enforce that policy? What if someone circumvents physical detection? BH Defense knows technologies you can use immediately to monitor and ensure security – actually pinpointing where the device is located within the detection zone.”</li>\r\n</ul>', 'News', '', 'publish', 'closed', 'open', '', 'news', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 0, 'http://kmdig.com/client/bhdefense/?page_id=63', 0, 'page', '', 0),
(64, 1, '2014-08-25 16:01:36', '2014-08-25 16:01:36', '', 'News', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2014-08-25 16:01:36', '2014-08-25 16:01:36', '', 63, 'http://kmdig.com/client/bhdefense/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2014-08-25 16:01:58', '2014-08-25 16:01:58', '', 'Whitepapers & Tools', '', 'publish', 'closed', 'open', '', 'whitepapers-tools', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 63, 'http://kmdig.com/client/bhdefense/?page_id=65', 0, 'page', '', 0),
(66, 1, '2014-08-25 16:01:58', '2014-08-25 16:01:58', '', 'Whitepapers & Tools', '', 'inherit', 'open', 'open', '', '65-revision-v1', '', '', '2014-08-25 16:01:58', '2014-08-25 16:01:58', '', 65, 'http://kmdig.com/client/bhdefense/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2014-08-25 16:02:10', '2014-08-25 16:02:10', '', 'Iraqi Children Foundation', '', 'publish', 'closed', 'open', '', 'iraqi-children-foundation', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 63, 'http://kmdig.com/client/bhdefense/?page_id=67', 0, 'page', '', 0),
(68, 1, '2014-08-25 16:02:10', '2014-08-25 16:02:10', '', 'Iraqi Children Foundation', '', 'inherit', 'open', 'open', '', '67-revision-v1', '', '', '2014-08-25 16:02:10', '2014-08-25 16:02:10', '', 67, 'http://kmdig.com/client/bhdefense/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2014-08-25 16:02:23', '2014-08-25 16:02:23', '<h2>BH Defense Risk Mitigation Partners Worldwide</h2>\r\n<span style="color: rgb(255, 0, 0);">TO COME FROM BHD: a short intro paragraph on why you use partners, how you choose them and vet them, the value of this for customers.</span>', 'Partners', '', 'publish', 'closed', 'open', '', 'partners', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 0, 'http://kmdig.com/client/bhdefense/?page_id=69', 0, 'page', '', 0),
(70, 1, '2014-08-25 16:02:23', '2014-08-25 16:02:23', '', 'Partners', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2014-08-25 16:02:23', '2014-08-25 16:02:23', '', 69, 'http://kmdig.com/client/bhdefense/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2014-08-25 16:02:49', '2014-08-25 16:02:49', '', 'North America', '', 'publish', 'closed', 'open', '', 'north-america', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 69, 'http://kmdig.com/client/bhdefense/?page_id=71', 0, 'page', '', 0),
(72, 1, '2014-08-25 16:02:49', '2014-08-25 16:02:49', '', 'North America', '', 'inherit', 'open', 'open', '', '71-revision-v1', '', '', '2014-08-25 16:02:49', '2014-08-25 16:02:49', '', 71, 'http://kmdig.com/client/bhdefense/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2014-08-25 16:03:05', '2014-08-25 16:03:05', '', 'Europe', '', 'publish', 'closed', 'open', '', 'europe', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 69, 'http://kmdig.com/client/bhdefense/?page_id=73', 0, 'page', '', 0),
(74, 1, '2014-08-25 16:03:05', '2014-08-25 16:03:05', '', 'Europe', '', 'inherit', 'open', 'open', '', '73-revision-v1', '', '', '2014-08-25 16:03:05', '2014-08-25 16:03:05', '', 73, 'http://kmdig.com/client/bhdefense/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2014-08-25 16:03:18', '2014-08-25 16:03:18', '', 'Middle East', '', 'publish', 'closed', 'open', '', 'middle-east', '', '', '2014-08-25 18:56:20', '2014-08-25 18:56:20', '', 69, 'http://kmdig.com/client/bhdefense/?page_id=75', 0, 'page', '', 0),
(76, 1, '2014-08-25 16:03:18', '2014-08-25 16:03:18', '', 'Middle East', '', 'inherit', 'open', 'open', '', '75-revision-v1', '', '', '2014-08-25 16:03:18', '2014-08-25 16:03:18', '', 75, 'http://kmdig.com/client/bhdefense/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2014-08-25 17:07:11', '2014-08-25 17:07:11', ' ', '', '', 'publish', 'open', 'open', '', '77', '', '', '2014-09-05 09:47:17', '2014-09-05 13:47:17', '', 0, 'http://kmdig.com/client/bhdefense/?p=77', 2, 'nav_menu_item', '', 0),
(78, 1, '2014-08-25 17:07:11', '2014-08-25 17:07:11', ' ', '', '', 'publish', 'open', 'open', '', '78', '', '', '2014-09-05 09:47:17', '2014-09-05 13:47:17', '', 0, 'http://kmdig.com/client/bhdefense/?p=78', 5, 'nav_menu_item', '', 0),
(80, 1, '2014-08-25 17:07:11', '2014-08-25 17:07:11', ' ', '', '', 'publish', 'open', 'open', '', '80', '', '', '2014-09-05 09:47:17', '2014-09-05 13:47:17', '', 0, 'http://kmdig.com/client/bhdefense/?p=80', 6, 'nav_menu_item', '', 0),
(81, 1, '2014-08-25 17:07:11', '2014-08-25 17:07:11', ' ', '', '', 'publish', 'open', 'open', '', '81', '', '', '2014-09-05 09:47:17', '2014-09-05 13:47:17', '', 0, 'http://kmdig.com/client/bhdefense/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2014-08-25 17:07:11', '2014-08-25 17:07:11', ' ', '', '', 'publish', 'open', 'open', '', '82', '', '', '2014-09-05 09:47:17', '2014-09-05 13:47:17', '', 0, 'http://kmdig.com/client/bhdefense/?p=82', 4, 'nav_menu_item', '', 0),
(83, 1, '2014-08-25 17:08:10', '2014-08-25 17:08:10', '<h2>BH Defense: Battle-Tested and Big on Details</h2>\r\n<strong>BH Defense LLC is a small, agile security firm</strong> with the expertise to attack big risks for government, military and commercial enterprises anywhere in the world. Since 2004, we’ve achieved 100% success on projects to mitigate clients’ risks and “get the job done” with security, logistics, O&amp;M, construction, training and project management under the most difficult conditions.\r\n<blockquote>\r\n<p style="text-align: right;">“We’ve never failed on a project because we’ve never failed to play out even the smallest details that could put people, assets and success at risk.”</p>\r\n</blockquote>\r\n<p style="text-align: right;"><strong>Charley Dublin</strong>\r\n<strong> BH Defense CEO</strong></p>\r\n<strong>With end-to-end risk mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise.</strong> From the world of international business, to remote areas and developing nations, we understand where threats exist and how to mitigate them. In fact, because of the expertise we apply to risk identification and mitigation—plus our battle-tested, on-the-ground experience in getting things done— BH Defense is the only U.S. government contractor continuing full support operations during the current crisis in Iraq.\r\n<h3>BH Defense at a Glance</h3>\r\n<ul>\r\n	<li><strong>Capabilities:</strong> Critical infrastructure risk assessment and enterprise risk mitigation planning. On-the-ground execution, including: physical, personnel, IT and Ether security; logistics; project management; construction and training.</li>\r\n	<li><strong>Personnel:</strong> Expertise is concentrated in a small, elite team of senior risk mitigation specialists and engineers who have led achieved success with projects in the world’s most challenging business, political, and geographic environments. In addition, we currently employ a global network of more than 50 full-time, fully vetted personnel from five different countries and can quickly deploy technical, professional, and security personnel to meet clients’ needs as they arise.</li>\r\n	<li><strong>Reach:</strong> with the ability to deliver end-to-end mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise from threats that include contamination, natural disasters, power disruption, hackers, criminals, terrorists and insider threats. This reach is vital because today’s critical infrastructure is so interdependent that BH Defense can deliver truly custom risk mitigation plans and also deliver on everything needed to put them into action.</li>\r\n	<li><strong>Locations:</strong> BH Defense is headquartered in Arlington, Virginia with offices in Baghdad, Iraq; Amman, Jordan; and Limassol, Cyprus.</li>\r\n</ul>', 'Contact', '', 'trash', 'open', 'open', '', 'contact', '', '', '2014-08-25 17:13:16', '2014-08-25 17:13:16', '', 0, 'http://kmdig.com/client/bhdefense/?p=83', 0, 'post', '', 0),
(84, 1, '2014-08-25 17:08:10', '2014-08-25 17:08:10', '', 'Contact', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2014-08-25 17:08:10', '2014-08-25 17:08:10', '', 83, 'http://kmdig.com/client/bhdefense/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2014-08-25 17:12:13', '2014-08-25 17:12:13', '<h2>BH Defense: Battle-Tested and Big on Details</h2>\n<strong>BH Defense LLC is a small, agile security firm</strong> with the expertise to attack big risks for government, military and commercial enterprises anywhere in the world. Since 2004, we’ve achieved 100% success on projects to mitigate clients’ risks and “get the job done” with security, logistics, O&amp;M, construction, training and project management under the most difficult conditions.\n<blockquote>\n<p style="text-align: right;">“We’ve never failed on a project because we’ve never failed to play out even the smallest details that could put people, assets and success at risk.”</p>\n</blockquote>\n<p style="text-align: right;"><strong>Charley Dublin</strong>\n<strong> BH Defense CEO</strong></p>\n<strong>With end-to-end risk mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise.</strong> From the world of international business, to remote areas and developing nations, we understand where threats exist and how to mitigate them. In fact, because of the expertise we apply to risk identification and mitigation—plus our battle-tested, on-the-ground experience in getting things done— BH Defense is the only U.S. government contractor continuing full support operations during the current crisis in Iraq.\n<h3>BH Defense at a Glance</h3>\n<ul>\n	<li>Capabilities: Critical infrastructure risk assessment and enterprise risk mitigation planning. On-the-ground execution, including: physical, personnel, IT and Ether security; logistics; project management; construction and training.</li>\n	<li>Personnel: Expertise is concentrated in a small, elite team of senior risk mitigation specialists and engineers who have led achieved success with projects in the world’s most challenging business, political, and geographic environments. In addition, we currently employ a global network of more than 50 full-time, fully vetted personnel from five different countries and can quickly deploy technical, professional, and security personnel to meet clients’ needs as they arise.</li>\n	<li>Reach: with the ability to deliver end-to-end mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise from threats that include contamination, natural disasters, power disruption, hackers, criminals, terrorists and insider threats. This reach is vital because today’s critical infrastructure is so interdependent that BH Defense can deliver truly custom risk mitigation plans and also deliver on everything needed to put them into action.</li>\n	<li>Locations: BH Defense is headquartered in Arlington, Virginia with offices in Baghdad, Iraq; Amman, Jordan; and Limassol, Cyprus.</li>\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '83-autosave-v1', '', '', '2014-08-25 17:12:13', '2014-08-25 17:12:13', '', 83, 'http://kmdig.com/client/bhdefense/83-autosave-v1/', 0, 'revision', '', 0),
(86, 1, '2014-08-25 17:12:39', '2014-08-25 17:12:39', '<h2>BH Defense: Battle-Tested and Big on Details</h2>\r\n<strong>BH Defense LLC is a small, agile security firm</strong> with the expertise to attack big risks for government, military and commercial enterprises anywhere in the world. Since 2004, we’ve achieved 100% success on projects to mitigate clients’ risks and “get the job done” with security, logistics, O&amp;M, construction, training and project management under the most difficult conditions.\r\n<blockquote>\r\n<p style="text-align: right;">“We’ve never failed on a project because we’ve never failed to play out even the smallest details that could put people, assets and success at risk.”</p>\r\n</blockquote>\r\n<p style="text-align: right;"><strong>Charley Dublin</strong>\r\n<strong> BH Defense CEO</strong></p>\r\n<strong>With end-to-end risk mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise.</strong> From the world of international business, to remote areas and developing nations, we understand where threats exist and how to mitigate them. In fact, because of the expertise we apply to risk identification and mitigation—plus our battle-tested, on-the-ground experience in getting things done— BH Defense is the only U.S. government contractor continuing full support operations during the current crisis in Iraq.\r\n<h3>BH Defense at a Glance</h3>\r\n<ul>\r\n	<li><strong>Capabilities:</strong> Critical infrastructure risk assessment and enterprise risk mitigation planning. On-the-ground execution, including: physical, personnel, IT and Ether security; logistics; project management; construction and training.</li>\r\n	<li><strong>Personnel:</strong> Expertise is concentrated in a small, elite team of senior risk mitigation specialists and engineers who have led achieved success with projects in the world’s most challenging business, political, and geographic environments. In addition, we currently employ a global network of more than 50 full-time, fully vetted personnel from five different countries and can quickly deploy technical, professional, and security personnel to meet clients’ needs as they arise.</li>\r\n	<li><strong>Reach:</strong> with the ability to deliver end-to-end mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise from threats that include contamination, natural disasters, power disruption, hackers, criminals, terrorists and insider threats. This reach is vital because today’s critical infrastructure is so interdependent that BH Defense can deliver truly custom risk mitigation plans and also deliver on everything needed to put them into action.</li>\r\n	<li><strong>Locations:</strong> BH Defense is headquartered in Arlington, Virginia with offices in Baghdad, Iraq; Amman, Jordan; and Limassol, Cyprus.</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2014-08-25 17:12:39', '2014-08-25 17:12:39', '', 83, 'http://kmdig.com/client/bhdefense/83-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2014-08-25 17:13:26', '2014-08-25 17:13:26', '<h2>Contact BH Defense</h2>\r\n<span style="color: #ff0000;">TO COME FROM BHD: current list of offices</span>\r\n\r\nFeature the white paper', 'Contact', '', 'publish', 'closed', 'open', '', 'contact', '', '', '2014-08-25 18:57:03', '2014-08-25 18:57:03', '', 0, 'http://kmdig.com/client/bhdefense/?page_id=87', 0, 'page', '', 0),
(88, 1, '2014-08-25 17:13:26', '2014-08-25 17:13:26', '<h2>BH Defense: Battle-Tested and Big on Details</h2>\r\n<strong>BH Defense LLC is a small, agile security firm</strong> with the expertise to attack big risks for government, military and commercial enterprises anywhere in the world. Since 2004, we’ve achieved 100% success on projects to mitigate clients’ risks and “get the job done” with security, logistics, O&amp;M, construction, training and project management under the most difficult conditions.\r\n<blockquote>\r\n<p style="text-align: right;">“We’ve never failed on a project because we’ve never failed to play out even the smallest details that could put people, assets and success at risk.”</p>\r\n</blockquote>\r\n<p style="text-align: right;"><strong>Charley Dublin</strong>\r\n<strong> BH Defense CEO</strong></p>\r\n<strong>With end-to-end risk mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise.</strong> From the world of international business, to remote areas and developing nations, we understand where threats exist and how to mitigate them. In fact, because of the expertise we apply to risk identification and mitigation—plus our battle-tested, on-the-ground experience in getting things done— BH Defense is the only U.S. government contractor continuing full support operations during the current crisis in Iraq.\r\n<h3>BH Defense at a Glance</h3>\r\n<ul>\r\n	<li><strong>Capabilities:</strong> Critical infrastructure risk assessment and enterprise risk mitigation planning. On-the-ground execution, including: physical, personnel, IT and Ether security; logistics; project management; construction and training.</li>\r\n	<li><strong>Personnel:</strong> Expertise is concentrated in a small, elite team of senior risk mitigation specialists and engineers who have led achieved success with projects in the world’s most challenging business, political, and geographic environments. In addition, we currently employ a global network of more than 50 full-time, fully vetted personnel from five different countries and can quickly deploy technical, professional, and security personnel to meet clients’ needs as they arise.</li>\r\n	<li><strong>Reach:</strong> with the ability to deliver end-to-end mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise from threats that include contamination, natural disasters, power disruption, hackers, criminals, terrorists and insider threats. This reach is vital because today’s critical infrastructure is so interdependent that BH Defense can deliver truly custom risk mitigation plans and also deliver on everything needed to put them into action.</li>\r\n	<li><strong>Locations:</strong> BH Defense is headquartered in Arlington, Virginia with offices in Baghdad, Iraq; Amman, Jordan; and Limassol, Cyprus.</li>\r\n</ul>', 'Contact', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2014-08-25 17:13:26', '2014-08-25 17:13:26', '', 87, 'http://kmdig.com/client/bhdefense/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2014-08-25 17:13:34', '2014-08-25 17:13:34', '', 'Contact', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2014-08-25 17:13:34', '2014-08-25 17:13:34', '', 87, 'http://kmdig.com/client/bhdefense/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2014-08-25 17:13:46', '2014-08-25 17:13:46', '<h2>BH Defense: Battle-Tested and Big on Details</h2>\r\n<strong>BH Defense LLC is a small, agile security firm</strong> with the expertise to attack big risks for government, military and commercial enterprises anywhere in the world. Since 2004, we’ve achieved 100% success on projects to mitigate clients’ risks and “get the job done” with security, logistics, O&amp;M, construction, training and project management under the most difficult conditions.\r\n<blockquote>\r\n<p style="text-align: right;">“We’ve never failed on a project because we’ve never failed to play out even the smallest details that could put people, assets and success at risk.”</p>\r\n</blockquote>\r\n<p style="text-align: right;"><strong>Charley Dublin</strong>\r\n<strong> BH Defense CEO</strong></p>\r\n<strong>With end-to-end risk mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise.</strong> From the world of international business, to remote areas and developing nations, we understand where threats exist and how to mitigate them. In fact, because of the expertise we apply to risk identification and mitigation—plus our battle-tested, on-the-ground experience in getting things done— BH Defense is the only U.S. government contractor continuing full support operations during the current crisis in Iraq.\r\n<h3>BH Defense at a Glance</h3>\r\n<ul>\r\n	<li><strong>Capabilities:</strong> Critical infrastructure risk assessment and enterprise risk mitigation planning. On-the-ground execution, including: physical, personnel, IT and Ether security; logistics; project management; construction and training.</li>\r\n	<li><strong>Personnel:</strong> Expertise is concentrated in a small, elite team of senior risk mitigation specialists and engineers who have led achieved success with projects in the world’s most challenging business, political, and geographic environments. In addition, we currently employ a global network of more than 50 full-time, fully vetted personnel from five different countries and can quickly deploy technical, professional, and security personnel to meet clients’ needs as they arise.</li>\r\n	<li><strong>Reach:</strong> with the ability to deliver end-to-end mitigation resources, BH Defense can plug a single vulnerability or secure an entire enterprise from threats that include contamination, natural disasters, power disruption, hackers, criminals, terrorists and insider threats. This reach is vital because today’s critical infrastructure is so interdependent that BH Defense can deliver truly custom risk mitigation plans and also deliver on everything needed to put them into action.</li>\r\n	<li><strong>Locations:</strong> BH Defense is headquartered in Arlington, Virginia with offices in Baghdad, Iraq; Amman, Jordan; and Limassol, Cyprus.</li>\r\n</ul>', 'About', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2014-08-25 17:13:46', '2014-08-25 17:13:46', '', 15, 'http://kmdig.com/client/bhdefense/15-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2014-08-25 17:22:45', '2014-08-25 17:22:45', ' ', '', '', 'publish', 'open', 'open', '', '91', '', '', '2014-08-25 17:23:52', '2014-08-25 17:23:52', '', 69, 'http://kmdig.com/client/bhdefense/?p=91', 3, 'nav_menu_item', '', 0),
(92, 1, '2014-08-25 17:22:45', '2014-08-25 17:22:45', ' ', '', '', 'publish', 'open', 'open', '', '92', '', '', '2014-08-25 17:23:52', '2014-08-25 17:23:52', '', 69, 'http://kmdig.com/client/bhdefense/?p=92', 2, 'nav_menu_item', '', 0),
(93, 1, '2014-08-25 17:22:45', '2014-08-25 17:22:45', ' ', '', '', 'publish', 'open', 'open', '', '93', '', '', '2014-08-25 17:23:52', '2014-08-25 17:23:52', '', 69, 'http://kmdig.com/client/bhdefense/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2014-08-25 17:23:01', '2014-08-25 17:23:01', ' ', '', '', 'publish', 'open', 'open', '', '94', '', '', '2014-08-25 15:07:54', '2014-08-25 19:07:54', '', 63, 'http://kmdig.com/client/bhdefense/?p=94', 3, 'nav_menu_item', '', 0),
(95, 1, '2014-08-25 17:23:01', '2014-08-25 17:23:01', ' ', '', '', 'publish', 'open', 'open', '', '95', '', '', '2014-08-25 15:07:54', '2014-08-25 19:07:54', '', 63, 'http://kmdig.com/client/bhdefense/?p=95', 2, 'nav_menu_item', '', 0),
(96, 1, '2014-08-25 17:23:35', '2014-08-25 17:23:35', ' ', '', '', 'publish', 'open', 'open', '', '96', '', '', '2014-08-25 15:06:01', '2014-08-25 19:06:01', '', 15, 'http://kmdig.com/client/bhdefense/?p=96', 3, 'nav_menu_item', '', 0),
(97, 1, '2014-08-25 17:23:35', '2014-08-25 17:23:35', ' ', '', '', 'publish', 'open', 'open', '', '97', '', '', '2014-08-25 15:06:01', '2014-08-25 19:06:01', '', 15, 'http://kmdig.com/client/bhdefense/?p=97', 2, 'nav_menu_item', '', 0),
(99, 1, '2014-08-25 17:24:48', '2014-08-25 17:24:48', ' ', '', '', 'publish', 'open', 'open', '', '99', '', '', '2014-08-25 18:24:45', '2014-08-25 18:24:45', '', 47, 'http://kmdig.com/client/bhdefense/?p=99', 7, 'nav_menu_item', '', 0),
(100, 1, '2014-08-25 17:24:48', '2014-08-25 17:24:48', ' ', '', '', 'publish', 'open', 'open', '', '100', '', '', '2014-08-25 18:24:45', '2014-08-25 18:24:45', '', 47, 'http://kmdig.com/client/bhdefense/?p=100', 4, 'nav_menu_item', '', 0),
(101, 1, '2014-08-25 17:24:48', '2014-08-25 17:24:48', ' ', '', '', 'publish', 'open', 'open', '', '101', '', '', '2014-08-25 18:24:45', '2014-08-25 18:24:45', '', 47, 'http://kmdig.com/client/bhdefense/?p=101', 5, 'nav_menu_item', '', 0),
(102, 1, '2014-08-25 17:24:48', '2014-08-25 17:24:48', ' ', '', '', 'publish', 'open', 'open', '', '102', '', '', '2014-08-25 18:24:45', '2014-08-25 18:24:45', '', 47, 'http://kmdig.com/client/bhdefense/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2014-08-25 17:24:48', '2014-08-25 17:24:48', ' ', '', '', 'publish', 'open', 'open', '', '103', '', '', '2014-08-25 18:24:45', '2014-08-25 18:24:45', '', 47, 'http://kmdig.com/client/bhdefense/?p=103', 2, 'nav_menu_item', '', 0),
(104, 1, '2014-08-25 17:24:48', '2014-08-25 17:24:48', ' ', '', '', 'publish', 'open', 'open', '', '104', '', '', '2014-08-25 18:24:45', '2014-08-25 18:24:45', '', 47, 'http://kmdig.com/client/bhdefense/?p=104', 6, 'nav_menu_item', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(105, 1, '2014-08-25 17:24:48', '2014-08-25 17:24:48', ' ', '', '', 'publish', 'open', 'open', '', '105', '', '', '2014-08-25 18:24:45', '2014-08-25 18:24:45', '', 47, 'http://kmdig.com/client/bhdefense/?p=105', 3, 'nav_menu_item', '', 0),
(106, 1, '2014-08-25 17:25:20', '2014-08-25 17:25:20', ' ', '', '', 'publish', 'open', 'open', '', '106', '', '', '2014-08-25 17:25:20', '2014-08-25 17:25:20', '', 39, 'http://kmdig.com/client/bhdefense/?p=106', 2, 'nav_menu_item', '', 0),
(107, 1, '2014-08-25 17:25:20', '2014-08-25 17:25:20', ' ', '', '', 'publish', 'open', 'open', '', '107', '', '', '2014-08-25 17:25:20', '2014-08-25 17:25:20', '', 39, 'http://kmdig.com/client/bhdefense/?p=107', 3, 'nav_menu_item', '', 0),
(108, 1, '2014-08-25 17:25:20', '2014-08-25 17:25:20', ' ', '', '', 'publish', 'open', 'open', '', '108', '', '', '2014-08-25 17:25:20', '2014-08-25 17:25:20', '', 39, 'http://kmdig.com/client/bhdefense/?p=108', 1, 'nav_menu_item', '', 0),
(109, 1, '2014-08-25 17:26:01', '2014-08-25 17:26:01', ' ', '', '', 'publish', 'open', 'open', '', '109', '', '', '2014-08-25 17:26:01', '2014-08-25 17:26:01', '', 23, 'http://kmdig.com/client/bhdefense/?p=109', 6, 'nav_menu_item', '', 0),
(110, 1, '2014-08-25 17:26:01', '2014-08-25 17:26:01', ' ', '', '', 'publish', 'open', 'open', '', '110', '', '', '2014-08-25 17:26:01', '2014-08-25 17:26:01', '', 23, 'http://kmdig.com/client/bhdefense/?p=110', 2, 'nav_menu_item', '', 0),
(111, 1, '2014-08-25 17:26:01', '2014-08-25 17:26:01', ' ', '', '', 'publish', 'open', 'open', '', '111', '', '', '2014-08-25 17:26:01', '2014-08-25 17:26:01', '', 23, 'http://kmdig.com/client/bhdefense/?p=111', 1, 'nav_menu_item', '', 0),
(112, 1, '2014-08-25 17:26:01', '2014-08-25 17:26:01', ' ', '', '', 'publish', 'open', 'open', '', '112', '', '', '2014-08-25 17:26:01', '2014-08-25 17:26:01', '', 23, 'http://kmdig.com/client/bhdefense/?p=112', 4, 'nav_menu_item', '', 0),
(113, 1, '2014-08-25 17:26:01', '2014-08-25 17:26:01', ' ', '', '', 'publish', 'open', 'open', '', '113', '', '', '2014-08-25 17:26:01', '2014-08-25 17:26:01', '', 23, 'http://kmdig.com/client/bhdefense/?p=113', 5, 'nav_menu_item', '', 0),
(114, 1, '2014-08-25 17:26:01', '2014-08-25 17:26:01', ' ', '', '', 'publish', 'open', 'open', '', '114', '', '', '2014-08-25 17:26:01', '2014-08-25 17:26:01', '', 23, 'http://kmdig.com/client/bhdefense/?p=114', 3, 'nav_menu_item', '', 0),
(115, 1, '2014-08-25 17:26:02', '2014-08-25 17:26:02', ' ', '', '', 'publish', 'open', 'open', '', '115', '', '', '2014-08-25 17:26:02', '2014-08-25 17:26:02', '', 23, 'http://kmdig.com/client/bhdefense/?p=115', 7, 'nav_menu_item', '', 0),
(116, 1, '2014-08-25 17:34:07', '2014-08-25 17:34:07', '<h2>BH Defense: A Broader Vision for Mitigating Risk</h2>\r\n<strong>BH Defense LLC is led by senior risk mitigation specialists and engineers</strong>. We are leading consultants in the field and we’re seasoned “on the ground,” ready to roll up our sleeves and clear away risks to improve the certainty of success even in the most difficult environments.\r\n<h3>BH Defense Leadership Team</h3>\r\nC. Dublin, CEO\r\n\r\n<span style="color: #ff0000;">Here, run short bios for the core team – 6? This can be done by listing titles OR, by listing area of expertise (Infrastructure Support, Construction Operations, Engineering and Services) and then listing the person in charge of that area. TO COME FROM BH DEFENSE</span>', 'Our Team', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2014-08-25 17:34:07', '2014-08-25 17:34:07', '', 19, 'http://kmdig.com/client/bhdefense/19-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2014-08-25 17:35:35', '2014-08-25 17:35:35', '<h2>BH Defense: Pursuing ISO Certification</h2>\r\nBH Defense is well-underway with ISO certification for the quality assurance program that backs our risk-mitigation methodology. This is virtually unheard of in this field.\r\n\r\nOther companies may have ISO certification for pieces of the risk-management continuum, but BH Defense is being ISO <strong>certified across its entire risk-mitigation methodology.</strong>\r\n\r\n<strong>BH Defense and the ISO Certification process</strong>\r\n\r\n<span style="color: #ff0000;">Run a general paragraph about what ISO Certification is in this particular field – i.e. how you are asked to prove quality assurance within your methodology. Include a sentence about any dates on a timeline for completion.</span>', 'ISO Certification', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2014-08-25 17:35:35', '2014-08-25 17:35:35', '', 21, 'http://kmdig.com/client/bhdefense/21-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2014-08-25 17:41:53', '2014-08-25 17:41:53', '<h2>BH Defense: Solutions for Every Type of Risk</h2>\n<strong>BH Defense offers battle-tested solutions for improving the certainty of success.</strong> We are experts at integrating security and risk mitigation into custom solutions.\n\nAs consultants, systems specialists and engineers, we identify critical infrastructure, rank that infrastructure in terms of value and vulnerabilities, and evaluate the enterprise’s capability to operate despite threats. We then create a strong risk mitigation plan and “hit the ground running” to put that plan into action quickly to ensure security—and success.  <a title="How We Work" href="http://kmdig.com/client/bhdefense/solutions/how-we-work/">Learn more about how BH Defense Works</a>.\n\nConsulting\nSecurity\nLogistics &amp; Supply Chain\nProject Management\nConstruction Management\nTraining\n\n[Set off ]\nSee how BH Defense solutions respond to the needs in different types of enterprises\n[perhaps use the graphic of the different types of industries. Click through is to the CUSTOMERS page]', 'Solutions', '', 'inherit', 'open', 'open', '', '23-autosave-v1', '', '', '2014-08-25 17:41:53', '2014-08-25 17:41:53', '', 23, 'http://kmdig.com/client/bhdefense/23-autosave-v1/', 0, 'revision', '', 0),
(119, 1, '2014-08-25 17:43:12', '2014-08-25 17:43:12', '<h2>BH Defense: Solutions for Every Type of Risk</h2>\r\n<strong>BH Defense offers battle-tested solutions for improving the certainty of success.</strong> We are experts at integrating security and risk mitigation into custom solutions.\r\n\r\nAs consultants, systems specialists and engineers, we identify critical infrastructure, rank that infrastructure in terms of value and vulnerabilities, and evaluate the enterprise’s capability to operate despite threats. We then create a strong risk mitigation plan and “hit the ground running” to put that plan into action quickly to ensure security—and success.  <a title="How We Work" href="http://kmdig.com/client/bhdefense/solutions/how-we-work/">Learn more about how BH Defense Works</a>.\r\n<ul>\r\n	<li>Consulting</li>\r\n	<li>Security</li>\r\n	<li>Logistics &amp; Supply Chain</li>\r\n	<li>Project Management</li>\r\n	<li>Construction Management</li>\r\n	<li>Training</li>\r\n</ul>\r\n<a title="Customers" href="http://kmdig.com/client/bhdefense/customers/"><em><strong> See how BH Defense solutions respond to the needs in different types of enterprises</strong></em></a>', 'Solutions', '', 'inherit', 'open', 'open', '', '23-revision-v1', '', '', '2014-08-25 17:43:12', '2014-08-25 17:43:12', '', 23, 'http://kmdig.com/client/bhdefense/23-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2014-08-25 17:47:10', '2014-08-25 17:47:10', '<h2>How BH Defense Works</h2>\n<strong>BH Defense identifies and integrates end-to-end risk mitigation resources.</strong> Our risk mitigation methodology includes consulting, execution and monitoring/evolution of safeguards and we tailor our deliverables for each client’s unique environment, goals and operational needs.\n\nTO COME FROM BH DEFENSE: a little more about how you can scale or focus capabilities depending on what a client works. Give example of how quickly a simple project can be underway. Perhaps give an example of the timeframe of a more complex project where it’s critical to get a response right away.\n<ol>\n	<li>Consulting/Assessment:\n<ul>\n	<li>Threat assessment</li>\n	<li>Mitigation plan</li>\n	<li>Mitigation plan drives recommendations: technology, products, services, practices</li>\n</ul>\n</li>\n	<li>Execution:</li>\n</ol>\n<ul>\n	<li>Guns, guards, gates</li>\n	<li>Background checks (knowing who your employees really are)</li>\n	<li>IT security for the network and data</li>\n	<li>Ether security for making the invisible visible</li>\n</ul>\n\n<ol>\n	<li>Monitoring and continuing evolution</li>\n</ol>\n<ul>\n	<li>Where new threats/risks are emerging</li>\n	<li>Where new technologies can strengthen risk protection</li>\n</ul>', 'How We Work', '', 'inherit', 'open', 'open', '', '25-autosave-v1', '', '', '2014-08-25 17:47:10', '2014-08-25 17:47:10', '', 25, 'http://kmdig.com/client/bhdefense/25-autosave-v1/', 0, 'revision', '', 0),
(121, 1, '2014-08-25 17:46:01', '2014-08-25 17:46:01', '<h2>How BH Defense Works</h2>\r\n<strong>BH Defense identifies and integrates end-to-end risk mitigation resources.</strong> Our risk mitigation methodology includes consulting, execution and monitoring/evolution of safeguards and we tailor our deliverables for each client’s unique environment, goals and operational needs.\r\n\r\nTO COME FROM BH DEFENSE: a little more about how you can scale or focus capabilities depending on what a client works. Give example of how quickly a simple project can be underway. Perhaps give an example of the timeframe of a more complex project where it’s critical to get a response right away.\r\n<ol>\r\n	<li>Consulting/Assessment:</li>\r\n<ul>\r\n	<li>Threat assessment</li>\r\n	<li>Mitigation plan</li>\r\n	<li>Mitigation plan drives recommendations: technology, products, services, practices</li>\r\n</ul>\r\n<li>Execution:</li>\r\n</ol>\r\n\r\n<ol>\r\n	\r\n</ol>\r\nGuns, guards, gates\r\nBackground checks (knowing who your employees really are)\r\nIT security for the network and data\r\nEther security for making the invisible visible\r\nMonitoring and continuing evolution\r\nWhere new threats/risks are emerging\r\nWhere new technologies can strengthen risk protection', 'How We Work', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-08-25 17:46:01', '2014-08-25 17:46:01', '', 25, 'http://kmdig.com/client/bhdefense/25-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2014-08-25 17:49:05', '2014-08-25 17:49:05', '<h2>How BH Defense Works</h2>\r\n<strong>BH Defense identifies and integrates end-to-end risk mitigation resources.</strong> Our risk mitigation methodology includes consulting, execution and monitoring/evolution of safeguards and we tailor our deliverables for each client’s unique environment, goals and operational needs.\r\n\r\nTO COME FROM BH DEFENSE: a little more about how you can scale or focus capabilities depending on what a client works. Give example of how quickly a simple project can be underway. Perhaps give an example of the timeframe of a more complex project where it’s critical to get a response right away.\r\n<ol>\r\n	<li>Consulting/Assessment:\r\n<ul>\r\n	<li>Threat assessment</li>\r\n	<li>Mitigation plan</li>\r\n	<li>Mitigation plan drives recommendations: technology, products, services, practices</li>\r\n</ul>\r\n</li>\r\n	<li>Execution:\r\n<ul>\r\n	<li>Guns, guards, gates</li>\r\n	<li>Background checks (knowing who your employees really are)</li>\r\n	<li>IT security for the network and data</li>\r\n	<li>Ether security for making the invisible visible</li>\r\n</ul>\r\n</li>\r\n<li>Monitoring and continuing evolution\r\n<ul>\r\n	<li>Where new threats/risks are emerging</li>\r\n	<li>Where new technologies can strengthen risk protection</li>\r\n</ul>\r\n</li>\r\n</ol>', 'How We Work', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-08-25 17:49:05', '2014-08-25 17:49:05', '', 25, 'http://kmdig.com/client/bhdefense/25-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2014-08-25 17:49:31', '2014-08-25 17:49:31', '<h2>How BH Defense Works</h2>\r\n<strong>BH Defense identifies and integrates end-to-end risk mitigation resources.</strong> Our risk mitigation methodology includes consulting, execution and monitoring/evolution of safeguards and we tailor our deliverables for each client’s unique environment, goals and operational needs.\r\n\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE: a little more about how you can scale or focus capabilities depending on what a client works. Give example of how quickly a simple project can be underway. Perhaps give an example of the timeframe of a more complex project where it’s critical to get a response right away.</span>\r\n<ol>\r\n	<li>Consulting/Assessment:\r\n<ul>\r\n	<li>Threat assessment</li>\r\n	<li>Mitigation plan</li>\r\n	<li>Mitigation plan drives recommendations: technology, products, services, practices</li>\r\n</ul>\r\n</li>\r\n	<li>Execution:\r\n<ul>\r\n	<li>Guns, guards, gates</li>\r\n	<li>Background checks (knowing who your employees really are)</li>\r\n	<li>IT security for the network and data</li>\r\n	<li>Ether security for making the invisible visible</li>\r\n</ul>\r\n</li>\r\n	<li>Monitoring and continuing evolution\r\n<ul>\r\n	<li>Where new threats/risks are emerging</li>\r\n	<li>Where new technologies can strengthen risk protection</li>\r\n</ul>\r\n</li>\r\n</ol>', 'How We Work', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-08-25 17:49:31', '2014-08-25 17:49:31', '', 25, 'http://kmdig.com/client/bhdefense/25-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2014-08-25 17:51:42', '2014-08-25 17:51:42', '<h2>BH Defense Consulting Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE: a short paragraph on how you approach consulting , and then a last couple sentences something like “Our consultations cover all the bases—including risks that clients might not have thought about. The risk assessments and mitigation plans we deliver are thorough because we address so many possible risks and integrate so many powerful protections, including:[EDIT THE LIST FROM THE EXISTING WEBSITE AS APPROPRIATE:]</span>\r\n<ul class="ul1">\r\n	<li class="li1"><span class="s2">Operations and Maintenance (O&amp;M), Supply Chain Management, and Secure Logistics Support </span></li>\r\n	<li class="li1"><span class="s2">Risk Mitigation Program Design, Management, and Execution</span>\r\n<ul class="ul2">\r\n	<li class="li1"><span class="s2">Risk Analysis, Planning, Program Implementation</span></li>\r\n	<li class="li1"><span class="s2">Close Personal Protection (CPP) Program Development</span></li>\r\n	<li class="li1"><span class="s2">Physical Protection System Implementation (design, procurement, installation, operation, maintenance and repair)</span></li>\r\n	<li class="li1"><span class="s2">Business Intelligence</span></li>\r\n	<li class="li1"><span class="s2">Training</span></li>\r\n</ul>\r\n</li>\r\n	<li class="li1"><span class="s2">Construction and Logistics</span></li>\r\n	<li class="li1"><span class="s2">Project Management</span></li>\r\n	<li class="li1"><span class="s2">Engineering Services</span></li>\r\n	<li class="li1"><span class="s2">Quality Control</span></li>\r\n	<li class="li1"><span class="s2">Supply Chain logistics and management</span></li>\r\n	<li class="li1"><span class="s2">PPS Design, Procurement, Installation, Testing, Operation, Maintenance and Repair for the following:</span>\r\n<ul class="ul2">\r\n	<li class="li1"><span class="s2">CCTV systems</span></li>\r\n	<li class="li1"><span class="s2">Intrusion-detection systems</span></li>\r\n	<li class="li1"><span class="s2">Integrated Alarm, assessment, surveillance, and communication systems</span></li>\r\n	<li class="li1"><span class="s2">Communications equipment</span></li>\r\n	<li class="li1"><span class="s2">Personnel access control and inspection equipment</span></li>\r\n	<li class="li1"><span class="s2">Package and material inspection equipment</span></li>\r\n	<li class="li1"><span class="s2">Vehicle inspection equipment</span></li>\r\n	<li class="li1"><span class="s2">Security lighting</span></li>\r\n	<li class="li1"><span class="s2">Emergency power or auxiliary power supplies</span></li>\r\n	<li class="li1"><span class="s2">Keys and locks</span></li>\r\n</ul>\r\n</li>\r\n	<li class="li1"><span class="s2">Physical Protection System (PPS) Services</span></li>\r\n</ul>', 'Consulting', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2014-08-25 17:51:42', '2014-08-25 17:51:42', '', 27, 'http://kmdig.com/client/bhdefense/27-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2014-08-25 17:52:48', '2014-08-25 17:52:48', '<h2>BH Defense Consulting Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE: a short paragraph on how you approach consulting , and then a last couple sentences something like “Our consultations cover all the bases—including risks that clients might not have thought about. The risk assessments and mitigation plans we deliver are thorough because we address so many possible risks and integrate so many powerful protections, including:[EDIT THE LIST FROM THE EXISTING WEBSITE AS APPROPRIATE:]</span>\r\n<ul class="ul1">\r\n	<li>Operations and Maintenance (O&amp;M), Supply Chain Management, and Secure Logistics Support </li>\r\n	<li>Risk Mitigation Program Design, Management, and Execution\r\n<ul class="ul2">\r\n	<li>Risk Analysis, Planning, Program Implementation</li>\r\n	<li>Close Personal Protection (CPP) Program Development</li>\r\n	<li>Physical Protection System Implementation (design, procurement, installation, operation, maintenance and repair)</li>\r\n	<li>Business Intelligence</li>\r\n	<li>Training</li>\r\n</ul>\r\n</li>\r\n	<li>Construction and Logistics</li>\r\n	<li>Project Management</li>\r\n	<li>Engineering Services</li>\r\n	<li>Quality Control</li>\r\n	<li>Supply Chain logistics and management</li>\r\n	<li>PPS Design, Procurement, Installation, Testing, Operation, Maintenance and Repair for the following:\r\n<ul class="ul2">\r\n	<li>CCTV systems</li>\r\n	<li>Intrusion-detection systems</li>\r\n	<li>Integrated Alarm, assessment, surveillance, and communication systems</li>\r\n	<li>Communications equipment</li>\r\n	<li>Personnel access control and inspection equipment</li>\r\n	<li>Package and material inspection equipment</li>\r\n	<li>Vehicle inspection equipment</li>\r\n	<li>Security lighting</li>\r\n	<li>Emergency power or auxiliary power supplies</li>\r\n	<li>Keys and locks</li>\r\n</ul>\r\n</li>\r\n	<li>Physical Protection System (PPS) Services</li>\r\n</ul>', 'Consulting', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2014-08-25 17:52:48', '2014-08-25 17:52:48', '', 27, 'http://kmdig.com/client/bhdefense/27-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2014-08-25 17:54:11', '2014-08-25 17:54:11', '<h2>BH Defense Security Solutions</h2>\r\nTO COME FROM BH DEFENSE elaborate on what’s on the website <em>[BH Defense LLC provides critical infrastructure protection, facilities security, personal protection operations, physical protection systems (PPS), security construction, and transportation security operations in difficult or hostile environments.]</em> and add new copy, including: because of our long track record of military experience and strong vendor relationships, BH Defense can find solutions to <strong>any risk scenario</strong> by deploying proven solutions in new ways and giving clients access to advanced, reliable, and perfect-fit technologies that aren’t yet mainstream in non-military markets. (Examples: Air Patrol, advanced building automation solutions, BOSCH technology and suite of projects).', 'Security', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-08-25 17:54:11', '2014-08-25 17:54:11', '', 29, 'http://kmdig.com/client/bhdefense/29-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2014-08-25 17:54:41', '2014-08-25 17:54:41', '<h2>BH Defense Logistics &amp; Supply Chain Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>', 'Logistics/Supply Chain', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2014-08-25 17:54:41', '2014-08-25 17:54:41', '', 31, 'http://kmdig.com/client/bhdefense/31-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2014-08-25 17:55:14', '2014-08-25 17:55:14', '<h2>BH Defense Security Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>\r\n\r\nelaborate on what’s on the website <em>[BH Defense LLC provides critical infrastructure protection, facilities security, personal protection operations, physical protection systems (PPS), security construction, and transportation security operations in difficult or hostile environments.]</em> and add new copy, including: because of our long track record of military experience and strong vendor relationships, BH Defense can find solutions to <strong>any risk scenario</strong> by deploying proven solutions in new ways and giving clients access to advanced, reliable, and perfect-fit technologies that aren’t yet mainstream in non-military markets. (Examples: Air Patrol, advanced building automation solutions, BOSCH technology and suite of projects).', 'Security', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-08-25 17:55:14', '2014-08-25 17:55:14', '', 29, 'http://kmdig.com/client/bhdefense/29-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2014-08-25 17:56:07', '2014-08-25 17:56:07', '<h2>BH Defense Project Management Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>', 'Project Management', '', 'inherit', 'open', 'open', '', '33-revision-v1', '', '', '2014-08-25 17:56:07', '2014-08-25 17:56:07', '', 33, 'http://kmdig.com/client/bhdefense/33-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2014-08-25 17:56:35', '2014-08-25 17:56:35', '<h2>BH Defense Construction Management Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>', 'Construction', '', 'inherit', 'open', 'open', '', '35-revision-v1', '', '', '2014-08-25 17:56:35', '2014-08-25 17:56:35', '', 35, 'http://kmdig.com/client/bhdefense/35-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2014-08-25 17:57:29', '2014-08-25 17:57:29', '<h2>BH Defense Training Solutions</h2>\r\n<span style="color: #ff0000;">TO COME FROM BH DEFENSE</span>', 'Training', '', 'inherit', 'open', 'open', '', '37-revision-v1', '', '', '2014-08-25 17:57:29', '2014-08-25 17:57:29', '', 37, 'http://kmdig.com/client/bhdefense/37-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2014-08-25 17:59:35', '2014-08-25 17:59:35', '<h2>Why do you need a risk mitigation partner now?</h2>\n<strong>The only thing growing faster than today’s opportunities are today’s risks.</strong> Political and religious differences have turned many areas of the world into war zones. In addition, business (like warfare itself) is becoming asymmetrical with new types of threats emerging out of nowhere.\n\n<a title="Why Choose Us" href="http://kmdig.com/client/bhdefense/the-stakes/why-choose-us/">Why Partner with BHD Now?</a>\n\nRisk Calculator: Which Risks Could Undercut Your Success and How Much Could they Cost You? (<span style="color: #ff0000;">To come from BHD – a checklist with some facts and figures plus types of risks and a call to action to contact BHD</span>\n\n3 factors that raise the stakes—and ROI— for risk mitigation\n\nThe prevalence of threats is growing. Traditional threats such as natural disasters, corruption, disgruntled employees and political or business espionage and sabotage can quickly disrupt any enterprise from a local business or small city to a multinational corporation or major government initiatives. In addition, new threats are emerging—from cyber attacks to new risks of contamination or power disruption.\n\nEnterprises are so technology dependent. Today, even a small network outage or security breach can bring operations to a standstill and leave people and sensitive information vulnerable. Plus, technology is increasingly being targeted by insiders and malicious hackers who may attack systems not for political or financial motivation, but simply for the recognition of hacking a high-profile or high-security system.\n\nCritical infrastructure has become so interdependent. If one aspect of infrastructure goes down it can affect everything. For example, a disruption in a region’s power supply can quickly disrupt the water supply, government services, healthcare, transportation, finance and communications.\n\nWhat happens if risks aren’t mitigated? Not identifying, anticipating and mitigating risks can cost an enterprise everything. Lives can be at stake. So can money and infrastructure. Even a short disruption of service can derail a successful operation with negative PR, falling stock prices or public trust, regulatory violations, and more.\nThat’s why BH Defense can make all the difference. We combine our own depth of experience with services offered by our vetted partners to find and mitigate risk across the enterprise and throughout the environment.', 'The Stakes', '', 'inherit', 'open', 'open', '', '39-autosave-v1', '', '', '2014-08-25 17:59:35', '2014-08-25 17:59:35', '', 39, 'http://kmdig.com/client/bhdefense/39-autosave-v1/', 0, 'revision', '', 0),
(133, 1, '2014-08-25 18:01:10', '2014-08-25 18:01:10', '<h2>Why do you need a risk mitigation partner now?</h2>\r\n<strong>The only thing growing faster than today’s opportunities are today’s risks.</strong> Political and religious differences have turned many areas of the world into war zones. In addition, business (like warfare itself) is becoming asymmetrical with new types of threats emerging out of nowhere.\r\n\r\n<a title="Why Choose Us" href="http://kmdig.com/client/bhdefense/the-stakes/why-choose-us/">Why Partner with BHD Now?</a>\r\n<p style="text-align: right;"><em>Risk Calculator: Which Risks Could Undercut Your Success and How Much Could they Cost You? </em><span style="color: rgb(255, 0, 0);">(To come from BHD – a checklist with some facts and figures plus types of risks and a call to action to contact BHD)</span></p>\r\n3 factors that raise the stakes—and ROI— for risk mitigation\r\n<ol>\r\n	<li><strong>The prevalence of threats is growing.</strong> Traditional threats such as natural disasters, corruption, disgruntled employees and political or business espionage and sabotage can quickly disrupt any enterprise from a local business or small city to a multinational corporation or major government initiatives. In addition, new threats are emerging—from cyber attacks to new risks of contamination or power disruption.</li>\r\n	<li><strong>Enterprises are so technology dependent.</strong> Today, even a small network outage or security breach can bring operations to a standstill and leave people and sensitive information vulnerable. Plus, technology is increasingly being targeted by insiders and malicious hackers who may attack systems not for political or financial motivation, but simply for the recognition of hacking a high-profile or high-security system.</li>\r\n	<li><strong>Critical infrastructure has become so interdependent.</strong> If one aspect of infrastructure goes down it can affect everything. For example, a disruption in a region’s power supply can quickly disrupt the water supply, government services, healthcare, transportation, finance and communications.</li>\r\n</ol>\r\n<strong>What happens if risks<em> aren’t</em> mitigated?</strong> Not identifying, anticipating and mitigating risks can cost an enterprise everything. Lives can be at stake. So can money and infrastructure. Even a short disruption of service can derail a successful operation with negative PR, falling stock prices or public trust, regulatory violations, and more.\r\n\r\n<strong>That’s why BH Defense can make all the difference.</strong> We combine our own depth of experience with services offered by our vetted partners to find and mitigate risk across the enterprise and throughout the environment.', 'The Stakes', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2014-08-25 18:01:10', '2014-08-25 18:01:10', '', 39, 'http://kmdig.com/client/bhdefense/39-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2014-08-25 18:03:04', '2014-08-25 18:03:04', '<h2>Why to Choose BH Defense as Your Security Partner</h2>\nNo company providing security systems, risk management, engineering and construction can surpass BH Defense’s record of performing successful engagements in the world’s most hazardous environments with ZERO serious injuries to employees, clients, partners or civilians.\n\nNo firm offers the consulting expertise to create an air-tight risk mitigation plan plus the “on the ground” experience and resources to execute that plan from start to finish and then to keep on monitoring performance and adapting equipment, construction, training, technology, policies and practices to neutralize new risks as they emerge.\n\nAnd no firm has better past performance—100% success on every project.\n<h3><strong> 9 reasons to trust BH Defense with your success:</strong></h3>\n<ol>\n	<li><strong>100% successful past performance.</strong> We have never failed on a project and there has never been a serious injury to civilians, employees or partners associated with our work. If BH Defense can deliver success — and safety— in Iraq, the company can do it in any environment.</li>\n	<li><strong>BH Defense’s depth of expertise</strong> with security, logistics, supply chain, construction management, project management and training translates to any organization that must deploy equipment, secure critical infrastructure, and protect people, assets and workflow—locally or worldwide.</li>\n	<li>At the forefront of technology—BH Defense can find solutions to any risk scenario by deploying proven solutions in new ways and giving clients access to advanced, reliable, and perfect-fit technologies that aren’t yet mainstream in non-military markets.</li>\n	<li>We excel at best value —creating custom solutions from COTS and preconfigured components.</li>\n	<li>We know how to build from zero. Our experience amid devastation and lack of infrastructure in war zones, for instance, is of direct value in helping government and private organizations not only recover from the aftermath of a natural disaster like a hurricane, but to put plans in place ahead of time that make all the difference in getting back to “normal” faster.</li>\n	<li>You get a plan plus a partner to execute that plan—we don’t produce recommendations and walk away. We take action to take of care risks and monitor new threats as they emerge.</li>\n	<li>BH Defense is entirely vendor-neutral. This frees us to make the right risk mitigation recommendations, and it frees you to operate confidently— knowing you’ve gotten the absolute best solution at the absolute best value.</li>\n	<li>BH Defense has been on the ground in Iraq —one of the world’s most hostile environments—since 2003. In fact, we’re the only US government support contractor continuing full support operations during the current crisis in Iraq. We thrive because we understand where threats exist and how to mitigate them, and we understand how to deliver when everything – including lives — depend on us getting everything right. And BH Defense always gets it right.</li>\n	<li>ISO Certification —BH Defense is well-underway with ISO certification for the quality assurance program that backs our risk-mitigation methodology. This is virtually unheard of in this field. Other companies may have pieces of ISO certification for pieces of the risk-management continuum, but BH Defense is being ISO certified across its entire risk-mitigation methodology.</li>\n</ol>', 'Why Choose Us', '', 'inherit', 'open', 'open', '', '41-autosave-v1', '', '', '2014-08-25 18:03:04', '2014-08-25 18:03:04', '', 41, 'http://kmdig.com/client/bhdefense/41-autosave-v1/', 0, 'revision', '', 0),
(135, 1, '2014-08-25 18:03:59', '2014-08-25 18:03:59', '<h2>Why to Choose BH Defense as Your Security Partner</h2>\r\nNo company providing security systems, risk management, engineering and construction can surpass BH Defense’s record of performing successful engagements in the world’s most hazardous environments with ZERO serious injuries to employees, clients, partners or civilians.\r\n\r\nNo firm offers the consulting expertise to create an air-tight risk mitigation plan plus the “on the ground” experience and resources to execute that plan from start to finish and then to keep on monitoring performance and adapting equipment, construction, training, technology, policies and practices to neutralize new risks as they emerge.\r\n\r\nAnd no firm has better past performance—100% success on every project.\r\n<h3><strong> 9 reasons to trust BH Defense with your success:</strong></h3>\r\n<ol>\r\n	<li><strong>100% successful past performance.</strong> We have never failed on a project and there has never been a serious injury to civilians, employees or partners associated with our work. If BH Defense can deliver success — and safety— in Iraq, the company can do it in any environment.</li>\r\n	<li><strong>BH Defense’s depth of expertise</strong> with security, logistics, supply chain, construction management, project management and training translates to any organization that must deploy equipment, secure critical infrastructure, and protect people, assets and workflow—locally or worldwide.</li>\r\n	<li><strong>At the forefront of technology</strong>—BH Defense can find solutions to any risk scenario by deploying proven solutions in new ways and giving clients access to advanced, reliable, and perfect-fit technologies that aren’t yet mainstream in non-military markets.</li>\r\n	<li><strong>We excel at best value</strong> —creating custom solutions from COTS and preconfigured components.</li>\r\n	<li><strong>We know how to build from zero.</strong> Our experience amid devastation and lack of infrastructure in war zones, for instance, is of direct value in helping government and private organizations not only recover from the aftermath of a natural disaster like a hurricane, but to put plans in place ahead of time that make all the difference in getting back to “normal” faster.</li>\r\n	<li><strong>You get a plan plus a partner to execute that plan</strong>—we don’t produce recommendations and walk away. We take action to take of care risks and monitor new threats as they emerge.</li>\r\n	<li><strong>BH Defense is entirely vendor-neutral.</strong> This frees us to make the right risk mitigation recommendations, and it frees you to operate confidently— knowing you’ve gotten the absolute best solution at the absolute best value.</li>\r\n	<li><strong>BH Defense has been on the ground in Iraq —one of the world’s most hostile environments—since 2003.</strong> In fact, we’re the only US government support contractor continuing full support operations during the current crisis in Iraq. We thrive because we understand where threats exist and how to mitigate them, and we understand how to deliver when everything – including lives — depend on us getting everything right. And BH Defense always gets it right.</li>\r\n	<li><a title="ISO Certification" href="http://kmdig.com/client/bhdefense/about/iso-certification/"><strong>ISO Certification</strong></a> —BH Defense is well-underway with ISO certification for the quality assurance program that backs our risk-mitigation methodology. This is virtually unheard of in this field. Other companies may have pieces of ISO certification for pieces of the risk-management continuum, but BH Defense is being ISO certified across its entire risk-mitigation methodology.</li>\r\n</ol>', 'Why Choose Us', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2014-08-25 18:03:59', '2014-08-25 18:03:59', '', 41, 'http://kmdig.com/client/bhdefense/41-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2014-08-25 18:07:33', '2014-08-25 18:07:33', '<h2>BH Defense Removes Risks from Every Enterprise</h2>\nSince 2004, BH Defense has been building a risk mitigation methodology and track record that translates a wide range of government and commercial enterprises worldwide.\n<ul>\n	<li>IT &amp; Communications</li>\n	<li>Power (electric/oil/gas)</li>\n	<li>Water Supply</li>\n	<li>Government Services</li>\n	<li>Healthcare</li>\n	<li>Transportation</li>\n	<li>Finance/Banking</li>\n</ul>', 'Customers', '', 'inherit', 'open', 'open', '', '47-autosave-v1', '', '', '2014-08-25 18:07:33', '2014-08-25 18:07:33', '', 47, 'http://kmdig.com/client/bhdefense/47-autosave-v1/', 0, 'revision', '', 0),
(137, 1, '2014-08-25 18:09:12', '2014-08-25 18:09:12', '<h2>BH Defense Removes Risks from Every Enterprise</h2>\r\nSince 2004, BH Defense has been building a risk mitigation methodology and track record that translates a wide range of government and commercial enterprises worldwide.\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (electric/oil/gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>', 'Customers', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-08-25 18:09:12', '2014-08-25 18:09:12', '', 47, 'http://kmdig.com/client/bhdefense/47-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2014-08-25 18:09:29', '2014-08-25 18:09:29', '<h2>BH Defense Removes Risks from Every Enterprise</h2>\r\nSince 2004, BH Defense has been building a risk mitigation methodology and track record that translates a wide range of government and commercial enterprises worldwide.\r\n<ul>\r\n	<li>\r\n<h3>IT &amp; Communications</h3>\r\n</li>\r\n	<li>\r\n<h3>Power (electric/oil/gas)</h3>\r\n</li>\r\n	<li>\r\n<h3>Water Supply</h3>\r\n</li>\r\n	<li>\r\n<h3>Government Services</h3>\r\n</li>\r\n	<li>\r\n<h3>Healthcare</h3>\r\n</li>\r\n	<li>\r\n<h3>Transportation</h3>\r\n</li>\r\n	<li>\r\n<h3>Finance/Banking</h3>\r\n</li>\r\n</ul>', 'Customers', '', 'inherit', 'open', 'open', '', '47-revision-v1', '', '', '2014-08-25 18:09:29', '2014-08-25 18:09:29', '', 47, 'http://kmdig.com/client/bhdefense/47-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2014-08-25 18:13:05', '2014-08-25 18:13:05', '<h2>Risk Mitigation in IT &amp; Communications</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>In the area of IT &amp; Communications, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'IT & Communications', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2014-08-25 18:13:05', '2014-08-25 18:13:05', '', 49, 'http://kmdig.com/client/bhdefense/49-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2014-08-25 18:14:06', '2014-08-25 18:14:06', '<h2>Risk Mitigation in Power Plants, Pipelines &amp; Utilities</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>In the area of Power (electric, gas, oil), BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Power (Electric/Oil/Gas)', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2014-08-25 18:14:06', '2014-08-25 18:14:06', '', 51, 'http://kmdig.com/client/bhdefense/51-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2014-08-25 18:14:59', '2014-08-25 18:14:59', '<h2>Risk Mitigation in the Water Supply</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\nTo protect the water supply, BH Defense can identify, anticipate and mitigate risks that include:\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Water Supply', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2014-08-25 18:14:59', '2014-08-25 18:14:59', '', 53, 'http://kmdig.com/client/bhdefense/53-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2014-08-25 18:15:44', '2014-08-25 18:15:44', '<h2>Risk Mitigation for Government Services</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>To prevent disruption of government services, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Government Services', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2014-08-25 18:15:44', '2014-08-25 18:15:44', '', 55, 'http://kmdig.com/client/bhdefense/55-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2014-08-25 18:16:27', '2014-08-25 18:16:27', '<h2>Risk Mitigation for Healthcare Enterprises</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>In the healthcare environment, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Healthcare', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2014-08-25 18:16:27', '2014-08-25 18:16:27', '', 57, 'http://kmdig.com/client/bhdefense/57-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2014-08-25 18:17:03', '2014-08-25 18:17:03', '<h2>Risk Mitigation for Transportation</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>To protect transportation services, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Transportation', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2014-08-25 18:17:03', '2014-08-25 18:17:03', '', 59, 'http://kmdig.com/client/bhdefense/59-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2014-08-25 18:17:38', '2014-08-25 18:17:38', '<h2>Risk Mitigation for Finance &amp; Banking</h2>\r\n<span style="color: #ff0000;">To come from BHD: a paragraph overview of this environment.</span>\r\n\r\n<strong>To protect financial transactions and banking services, BH Defense can identify, anticipate and mitigate risks that include:</strong>\r\n\r\n<span style="color: #ff0000;">To come from BHD: a bulleted list of the types of risks that can be mitigated.</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: perhaps include a specific example of either a project you’ve done in this field or an example that shows how a particular type of risk in this area could be addressed</span>', 'Finance/Banking', '', 'inherit', 'open', 'open', '', '61-revision-v1', '', '', '2014-08-25 18:17:38', '2014-08-25 18:17:38', '', 61, 'http://kmdig.com/client/bhdefense/61-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2014-08-25 18:19:14', '2014-08-25 18:19:14', '<h2>BH Defense: 100% Success with Past Performance</h2>\r\n<span style="color: #ff0000;">[Show Logos]</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD:an intro paragraph about Past Performance</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: several case studies or examples, quotes (even if they’re not named – e.g., Logistics Manager for US Marshal Services in Iraq)</span>', 'Past Performance', '', 'publish', 'closed', 'open', '', 'past-performance', '', '', '2014-08-25 18:56:08', '2014-08-25 18:56:08', '', 47, 'http://kmdig.com/client/bhdefense/?page_id=146', 0, 'page', '', 0),
(147, 1, '2014-08-25 18:19:14', '2014-08-25 18:19:14', '<h2>BH Defense: 100% Success with Past Performance</h2>\r\n<span style="color: #ff0000;">[Show Logos]</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD:an intro paragraph about Past Performance</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: several case studies or examples, quotes (even if they’re not named – e.g., Logistics Manager for US Marshal Services in Iraq)</span>', 'Past Performance', '', 'inherit', 'open', 'open', '', '146-revision-v1', '', '', '2014-08-25 18:19:14', '2014-08-25 18:19:14', '', 146, 'http://kmdig.com/client/bhdefense/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2014-08-25 18:24:45', '2014-08-25 18:24:45', ' ', '', '', 'publish', 'open', 'open', '', '148', '', '', '2014-08-25 18:24:45', '2014-08-25 18:24:45', '', 47, 'http://kmdig.com/client/bhdefense/?p=148', 8, 'nav_menu_item', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(149, 1, '2014-08-25 18:26:27', '2014-08-25 18:26:27', '<h2>Risk Mitigation News &amp; Resources from BH Defense</h2>\r\n<span style="color: #ff0000;">[To come from BH Defense-- news items –at least 5. Ideas:</span>\r\n<span style="color: #ff0000;"> The $12M MOD</span>\r\n<span style="color: #ff0000;"> Something on BOSCH</span>\r\n<span style="color: #ff0000;"> Something on Air Defense</span>\r\n<span style="color: #ff0000;"> Something on status of ISO certification</span>\r\n<span style="color: #ff0000;"> Something on new office? Expansion?</span>\r\n<span style="color: #ff0000;"> 10th Anniversary actively supporting government programs on the ground in Iraq]</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: short write up on Iraqi Children Foundation</span>\r\n\r\n<span style="color: #ff0000;">To come from BHD: one-pagers, whitepapers etc,. Here is the list from the branding platform for ideas:</span>\r\n<ul>\r\n	<li>Real-world examples of what happens without risk mitigation planning (maybe develop theoretical scenarios of the vulnerabilities at a Louisiana refinery and SCIF site and the consequences of not taking action)</li>\r\n	<li>Short examples of risks BH Defense spotted in interdependent critical infrastructure that the client didn’t see</li>\r\n	<li>Ether Security: We can make what’s invisible visible (What the technology is and why it’s critical)</li>\r\n	<li>20 things to do wrong in expanding overseas (why it’s critical to have a whole plan in place to handle not just supply chain, equipment and vehicles, but personnel, network security, etc.)</li>\r\n	<li>20 things to do wrong before a natural disaster strikes</li>\r\n	<li>20 things to do wrong in building out your new facility (a walk-through of what are the threats? What kind of damage could certain explosives or natural disasters cause? Etc. Talk about the need to go onsite as well as do the research, talk with vendors to come up with a plan that recommends full-spectrum risk mitigation: technology, physical security, personnel, building materials/construction techniques, etc. AND how it’s crucial to continue to manage the new facility so that it’s constructed, equipped, monitored and maintained in perfect alignment with the plan.</li>\r\n	<li>Beyond Guns, Guards and Gates: Dealing with Today’s Asymmetrical Threats</li>\r\n	<li>Big Threats for Little Businesses (the idea that corruption, partner power struggles, insider sabotage, competitor hacking, and natural disasters can threaten the life of a small company just the way they can a multinational corporation)</li>\r\n	<li>Threat vs. Risk: Can You Spot Them Before it’s Too Late? (educate about how a “potential sniper” is a threat, the “president” would be the identified asset, and the risk would be that the sniper might shoot the president. Show examples of these in all your audiences and explain that simply identifying isn’t enough – even having a plan isn’t enough. You need to put that plan into action.)</li>\r\n	<li>SCIF sites: When Gates, Guards and Policies aren’t enough – Ether security and why you use advanced military technologies: “In a SCIF, you can put a policy in place to prohibit radio-enabled devices like cell phones, cameras or laptops. But how do you control and enforce that policy? What if someone circumvents physical detection? BH Defense knows technologies you can use immediately to monitor and ensure security – actually pinpointing where the device is located within the detection zone.”</li>\r\n</ul>', 'News', '', 'inherit', 'open', 'open', '', '63-revision-v1', '', '', '2014-08-25 18:26:27', '2014-08-25 18:26:27', '', 63, 'http://kmdig.com/client/bhdefense/63-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2014-08-25 18:55:43', '2014-08-25 18:55:43', '<h2>BH Defense Risk Mitigation Partners Worldwide</h2>\r\n<span style="color: rgb(255, 0, 0);">TO COME FROM BHD: a short intro paragraph on why you use partners, how you choose them and vet them, the value of this for customers.</span>', 'Partners', '', 'inherit', 'open', 'open', '', '69-revision-v1', '', '', '2014-08-25 18:55:43', '2014-08-25 18:55:43', '', 69, 'http://kmdig.com/client/bhdefense/69-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2014-08-25 18:57:03', '2014-08-25 18:57:03', '<h2>Contact BH Defense</h2>\r\n<span style="color: #ff0000;">TO COME FROM BHD: current list of offices</span>\r\n\r\nFeature the white paper', 'Contact', '', 'inherit', 'open', 'open', '', '87-revision-v1', '', '', '2014-08-25 18:57:03', '2014-08-25 18:57:03', '', 87, 'http://kmdig.com/client/bhdefense/87-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2014-08-25 15:03:25', '2014-08-25 19:03:25', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:03:25', '2014-08-25 19:03:25', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2014-08-25 15:03:34', '2014-08-25 19:03:34', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:03:34', '2014-08-25 19:03:34', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2014-08-25 15:03:42', '2014-08-25 19:03:42', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:03:42', '2014-08-25 19:03:42', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2014-08-25 15:06:01', '2014-08-25 19:06:01', '', 'Overview', '', 'publish', 'open', 'open', '', 'overview', '', '', '2014-08-25 15:06:01', '2014-08-25 19:06:01', '', 0, 'http://kmdig.com/client/bhdefense/?p=155', 1, 'nav_menu_item', '', 0),
(156, 1, '2014-08-25 15:07:54', '2014-08-25 19:07:54', ' ', '', '', 'publish', 'open', 'open', '', '156', '', '', '2014-08-25 15:07:54', '2014-08-25 19:07:54', '', 0, 'http://kmdig.com/client/bhdefense/?p=156', 1, 'nav_menu_item', '', 0),
(158, 1, '2014-08-25 15:16:14', '2014-08-25 19:16:14', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:16:14', '2014-08-25 19:16:14', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2014-08-25 15:18:25', '2014-08-25 19:18:25', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:18:25', '2014-08-25 19:18:25', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2014-08-25 15:20:16', '2014-08-25 19:20:16', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:20:16', '2014-08-25 19:20:16', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2014-08-25 15:20:47', '2014-08-25 19:20:47', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:20:47', '2014-08-25 19:20:47', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2014-08-25 15:20:57', '2014-08-25 19:20:57', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:20:57', '2014-08-25 19:20:57', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2014-08-25 15:21:24', '2014-08-25 19:21:24', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:21:24', '2014-08-25 19:21:24', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2014-08-25 15:28:56', '2014-08-25 19:28:56', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:28:56', '2014-08-25 19:28:56', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2014-08-25 15:30:56', '2014-08-25 19:30:56', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:30:56', '2014-08-25 19:30:56', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2014-08-25 15:33:04', '2014-08-25 19:33:04', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:33:04', '2014-08-25 19:33:04', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2014-08-25 15:35:31', '2014-08-25 19:35:31', 'a:6:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:17:"template-home.php";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_53c845a4a5f08', '', '', '2014-09-04 16:56:51', '2014-09-04 20:56:51', '', 0, 'http://kmdig.com/client/bhdefense/?post_type=acf-field-group&#038;p=168', 0, 'acf-field-group', '', 0),
(169, 1, '2014-08-25 15:35:31', '2014-08-25 19:35:31', 'a:8:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:9:"Add Slide";}', 'Home Slider', 'home_slider', 'publish', 'open', 'open', '', 'field_53c8661caaa7a', '', '', '2014-09-04 12:40:08', '2014-09-04 16:40:08', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&#038;p=169', 1, 'acf-field', '', 0),
(171, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Title', 'home_slider_title', 'publish', 'open', 'open', '', 'field_53c86636aaa7b', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 169, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=171', 0, 'acf-field', '', 0),
(172, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Sub Title', 'home_slider_sub_title', 'publish', 'open', 'open', '', 'field_53c86671aaa7c', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 169, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=172', 1, 'acf-field', '', 0),
(173, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Button Title', 'home_slider_btn_title', 'publish', 'open', 'open', '', 'field_53c86687aaa7d', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 169, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=173', 2, 'acf-field', '', 0),
(174, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Button Link', 'home_slider_btn_link', 'publish', 'open', 'open', '', 'field_53c86692aaa7e', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 169, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=174', 3, 'acf-field', '', 0),
(175, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";}', 'Background Image', 'home_slider_image', 'publish', 'open', 'open', '', 'field_53c866bcaaa7f', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 169, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=175', 4, 'acf-field', '', 0),
(176, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:12:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Foreground Animation', 'home_slider_anim', 'publish', 'open', 'open', '', 'field_53d807ed4fd6f', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 169, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=176', 5, 'acf-field', '', 0),
(187, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:6:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:0:{}}', 'Page Title', 'page-title', 'publish', 'open', 'open', '', 'group_53c845a4bdf11', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 0, 'http://kmdig.com/client/bhdefense/?post_type=acf-field-group&p=187', 0, 'acf-field-group', '', 0),
(188, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:35:"Add a sub title to the header area.";s:8:"required";i:0;s:13:"default_value";s:0:"";s:11:"placeholder";s:58:"Add a short descriptive phrase that introduces the content";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_52b1e150191b1";s:8:"operator";s:2:"!=";s:5:"value";s:4:"hide";}}}}', 'Sub Title', 'page_sub_title', 'publish', 'open', 'open', '', 'field_52b1dbc2191b0', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 187, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=188', 0, 'acf-field', '', 0),
(189, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:5:"radio";s:12:"instructions";s:26:"Choose the style of title.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"choices";a:4:{s:7:"default";s:7:"Default";s:5:"large";s:5:"Large";s:8:"centered";s:8:"Centered";s:4:"hide";s:4:"Hide";}s:12:"other_choice";i:0;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";}', 'Title Type', 'page_title_type', 'publish', 'open', 'open', '', 'field_52b1e150191b1', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 187, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=189', 1, 'acf-field', '', 0),
(190, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:5:"radio";s:12:"instructions";s:63:"Select full screen header or the size of a custom height header";s:8:"required";i:0;s:7:"choices";a:2:{s:4:"full";s:4:"full";s:6:"custom";s:6:"custom";}s:12:"other_choice";i:0;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_52b1e150191b1";s:8:"operator";s:2:"==";s:5:"value";s:5:"large";}}}}', 'Header Height', 'page_header_height', 'publish', 'open', 'open', '', 'field_52d42b8298c94', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 187, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=190', 2, 'acf-field', '', 0),
(191, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:13:{s:4:"type";s:6:"number";s:12:"instructions";s:56:"(Optional) Add a pixel height for the page header area. ";s:8:"required";i:0;s:13:"default_value";s:0:"";s:11:"placeholder";s:7:"ex. 400";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";i:1000;s:4:"step";i:10;s:8:"readonly";i:0;s:8:"disabled";i:0;s:17:"conditional_logic";a:1:{i:0;a:2:{i:0;a:3:{s:5:"field";s:19:"field_52b1e150191b1";s:8:"operator";s:2:"==";s:5:"value";s:5:"large";}i:1;a:3:{s:5:"field";s:19:"field_52d42b8298c94";s:8:"operator";s:2:"==";s:5:"value";s:6:"custom";}}}}', 'Custom Height', 'page_header_height_custom', 'publish', 'open', 'open', '', 'field_52b20e4d7d0fe', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 187, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=191', 3, 'acf-field', '', 0),
(192, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:5:"radio";s:12:"instructions";s:31:"Select the color of the overlay";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"choices";a:4:{s:4:"none";s:4:"none";s:5:"green";s:5:"green";s:5:"black";s:5:"black";s:5:"other";s:5:"other";}s:12:"other_choice";i:0;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";}', 'Overaly Color', 'page_header_color', 'publish', 'open', 'open', '', 'field_52b220f130496', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 187, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=192', 4, 'acf-field', '', 0),
(193, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:5:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:52:"Add a color overlay (Default EKWIP green is #1abc9c)";s:8:"required";i:0;s:13:"default_value";s:7:"#1abc9c";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_52b220f130496";s:8:"operator";s:2:"==";s:5:"value";s:5:"other";}}}}', 'Other Color', 'page_header_color_other', 'publish', 'open', 'open', '', 'field_52b214f813388', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 187, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=193', 5, 'acf-field', '', 0),
(194, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:6:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:20:"template-builder.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";}', 'Builder', 'builder', 'publish', 'open', 'open', '', 'group_53c845a4cc0af', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 0, 'http://kmdig.com/client/bhdefense/?post_type=acf-field-group&p=194', 1, 'acf-field-group', '', 0),
(195, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:16:"flexible_content";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"button_label";s:11:"Add Element";s:3:"min";s:0:"";s:3:"max";s:0:"";s:7:"layouts";a:9:{i:0;a:6:{s:3:"key";s:13:"53c845a4d4cf9";s:4:"name";s:3:"cta";s:5:"label";s:14:"Call To Action";s:7:"display";s:3:"row";s:3:"min";s:0:"";s:3:"max";s:0:"";}i:1;a:6:{s:3:"key";s:13:"53c845a4e8179";s:4:"name";s:10:"full_width";s:5:"label";s:17:"Full Width Column";s:7:"display";s:3:"row";s:3:"min";s:0:"";s:3:"max";s:0:"";}i:2;a:6:{s:3:"key";s:13:"53c845a50c22d";s:4:"name";s:11:"four_column";s:5:"label";s:11:"Four Column";s:7:"display";s:3:"row";s:3:"min";s:0:"";s:3:"max";s:0:"";}i:3;a:6:{s:3:"key";s:13:"53c845a51edf5";s:4:"name";s:12:"three_column";s:5:"label";s:12:"Three Column";s:7:"display";s:3:"row";s:3:"min";s:0:"";s:3:"max";s:0:"";}i:4;a:6:{s:3:"key";s:13:"53c845a52e4b8";s:4:"name";s:10:"two_column";s:5:"label";s:10:"Two Column";s:7:"display";s:3:"row";s:3:"min";s:0:"";s:3:"max";s:0:"";}i:5;a:6:{s:3:"key";s:13:"53dfcdd17b85a";s:4:"name";s:18:"two_column_graphic";s:5:"label";s:18:"Two Column Graphic";s:7:"display";s:3:"row";s:3:"min";s:0:"";s:3:"max";s:0:"";}i:6;a:6:{s:3:"key";s:13:"53c845a53b800";s:4:"name";s:9:"jumbotron";s:5:"label";s:9:"Jumbotron";s:7:"display";s:3:"row";s:3:"min";s:0:"";s:3:"max";s:0:"";}i:7;a:6:{s:3:"key";s:13:"53c845a554f6e";s:4:"name";s:4:"well";s:5:"label";s:4:"Well";s:7:"display";s:3:"row";s:3:"min";s:0:"";s:3:"max";s:0:"";}i:8;a:6:{s:3:"key";s:13:"53c845a561b4f";s:4:"name";s:4:"tabs";s:5:"label";s:4:"Tabs";s:7:"display";s:3:"row";s:3:"min";s:0:"";s:3:"max";s:0:"";}}}', 'Builder', 'km_builder', 'publish', 'open', 'open', '', 'field_52accdd43c99b', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 194, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=195', 0, 'acf-field', '', 0),
(196, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:14:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a4d4cf9";}', 'Text', 'cta_text', 'publish', 'open', 'open', '', 'field_52b356afa7250', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=196', 0, 'acf-field', '', 0),
(197, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:14:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a4d4cf9";}', 'Button Text', 'cta_button', 'publish', 'open', 'open', '', 'field_52b35a59a7256', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=197', 1, 'acf-field', '', 0),
(198, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:14:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a4d4cf9";}', 'Button Link', 'cta_button_link', 'publish', 'open', 'open', '', 'field_52b35b1ca7257', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=198', 2, 'acf-field', '', 0),
(199, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:11:{s:4:"type";s:5:"radio";s:12:"instructions";s:81:"Default inherit global overlay color. If no overlay is selected default is green.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"choices";a:4:{s:7:"default";s:7:"default";s:4:"gray";s:4:"gray";s:5:"white";s:5:"white";s:4:"none";s:4:"none";}s:12:"other_choice";i:1;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"parent_layout";s:13:"53c845a4d4cf9";}', 'Class', 'cta_class', 'publish', 'open', 'open', '', 'field_52b35728a7253', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=199', 3, 'acf-field', '', 0),
(200, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:11:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"choices";a:4:{s:7:"default";s:7:"default";s:5:"white";s:5:"white";s:5:"black";s:5:"black";s:5:"other";s:5:"other";}s:12:"other_choice";i:1;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"parent_layout";s:13:"53c845a4d4cf9";}', 'Text Color', 'cta_text_color', 'publish', 'open', 'open', '', 'field_53583b2d87557', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=200', 4, 'acf-field', '', 0),
(201, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:7:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:27:"Add a custom color for text";s:8:"required";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:13:"parent_layout";s:13:"53c845a4d4cf9";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_53583b2d87557";s:8:"operator";s:2:"==";s:5:"value";s:5:"other";}}}}', 'Custom Text Color', 'cta_text_color_other', 'publish', 'open', 'open', '', 'field_53583b8387558', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=201', 5, 'acf-field', '', 0),
(202, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:15:{s:4:"type";s:6:"number";s:12:"instructions";s:36:"Height at top and bottom of section.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";i:110;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";i:900;s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a4d4cf9";}', 'Vertical Padding', 'cta_vertical_padding', 'publish', 'open', 'open', '', 'field_52b35781a7254', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=202', 6, 'acf-field', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(203, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:5:"image";s:12:"instructions";s:56:"Make the background stay in place while the user scrolls";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:13:"return_format";s:3:"url";s:13:"parent_layout";s:13:"53c845a4d4cf9";}', 'Background Image', 'cta_bg', 'publish', 'open', 'open', '', 'field_52b35d76de070', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=203', 7, 'acf-field', '', 0),
(204, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:56:"Make the background stay in place while the user scrolls";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a4d4cf9";}', 'Background Fixed', 'cta_bg_fx', 'publish', 'open', 'open', '', 'field_52b35a05a7255', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=204', 8, 'acf-field', '', 0),
(205, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a4d4cf9";}', 'Full Height', 'cta_full_height', 'publish', 'open', 'open', '', 'field_53629108cb207', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=205', 9, 'acf-field', '', 0),
(206, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a4e8179";}', 'Full Width', 'col-md-12', 'publish', 'open', 'open', '', 'field_52b35b5bde064', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=206', 10, 'acf-field', '', 0),
(207, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:11:{s:4:"type";s:5:"radio";s:12:"instructions";s:36:"Default inherits page overlay color.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"choices";a:4:{s:7:"default";s:7:"default";s:4:"gray";s:4:"gray";s:5:"white";s:5:"white";s:4:"none";s:4:"none";}s:12:"other_choice";i:1;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"parent_layout";s:13:"53c845a4e8179";}', 'Class', 'full_width_class', 'publish', 'open', 'open', '', 'field_52b35b5bde067', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=207', 11, 'acf-field', '', 0),
(208, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:13:"return_format";s:3:"url";s:13:"parent_layout";s:13:"53c845a4e8179";}', 'Background Image', 'full_width_bg', 'publish', 'open', 'open', '', 'field_52b35d1ade06f', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=208', 12, 'acf-field', '', 0),
(209, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:56:"Make the background stay in place while the user scrolls";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a4e8179";}', 'Background Fixed', 'full_width_bg_fx', 'publish', 'open', 'open', '', 'field_52b35b5bde069', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=209', 13, 'acf-field', '', 0),
(210, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:15:{s:4:"type";s:6:"number";s:12:"instructions";s:36:"Height at top and bottom of section.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";i:110;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";i:900;s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a4e8179";}', 'Vertical Padding', 'full_width_vertical_padding', 'publish', 'open', 'open', '', 'field_52b35b5bde068', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=210', 14, 'acf-field', '', 0),
(211, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a4e8179";}', 'Full Height', 'full_width_full_height', 'publish', 'open', 'open', '', 'field_5362911fcb208', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=211', 15, 'acf-field', '', 0),
(212, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a50c22d";}', 'First Column', 'first_col-md-4', 'publish', 'open', 'open', '', 'field_52b35e31de072', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=212', 16, 'acf-field', '', 0),
(213, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a50c22d";}', 'Middle Column', 'second_col-md-4', 'publish', 'open', 'open', '', 'field_52b35effde077', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=213', 17, 'acf-field', '', 0),
(214, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a50c22d";}', 'Third Column', 'third_col-md-4', 'publish', 'open', 'open', '', 'field_52b35f69de078', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=214', 18, 'acf-field', '', 0),
(215, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a50c22d";}', 'Fourth Column', 'fourth_col-md-4', 'publish', 'open', 'open', '', 'field_53583809feeac', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=215', 19, 'acf-field', '', 0),
(216, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:11:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"choices";a:4:{s:7:"default";s:7:"default";s:4:"gray";s:4:"gray";s:5:"white";s:5:"white";s:4:"none";s:4:"none";}s:12:"other_choice";i:1;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"parent_layout";s:13:"53c845a50c22d";}', 'Class', 'four_column_class', 'publish', 'open', 'open', '', 'field_52b35e31de073', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=216', 20, 'acf-field', '', 0),
(217, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:13:"return_format";s:3:"url";s:13:"parent_layout";s:13:"53c845a50c22d";}', 'Background Image', 'four_column_bg', 'publish', 'open', 'open', '', 'field_52b35e31de074', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=217', 21, 'acf-field', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(218, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:56:"Make the background stay in place while the user scrolls";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a50c22d";}', 'Background Fixed', 'four_column_bg_fx', 'publish', 'open', 'open', '', 'field_52b35e31de075', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=218', 22, 'acf-field', '', 0),
(219, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:15:{s:4:"type";s:6:"number";s:12:"instructions";s:36:"Height at top and bottom of section.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";i:110;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";i:900;s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a50c22d";}', 'Vertical Padding', 'four_column_vertical_padding', 'publish', 'open', 'open', '', 'field_52b35e31de076', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=219', 23, 'acf-field', '', 0),
(220, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a50c22d";}', 'Full Height', 'four_column_full_height', 'publish', 'open', 'open', '', 'field_5362914ccb209', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=220', 24, 'acf-field', '', 0),
(221, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a51edf5";}', 'Left Column', 'left_col-md-4', 'publish', 'open', 'open', '', 'field_53583729feea5', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=221', 25, 'acf-field', '', 0),
(222, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a51edf5";}', 'Middle Column', 'middle_col-md-4', 'publish', 'open', 'open', '', 'field_53583729feea6', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=222', 26, 'acf-field', '', 0),
(223, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a51edf5";}', 'Right Column', 'right_col-md-4', 'publish', 'open', 'open', '', 'field_53583729feea7', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=223', 27, 'acf-field', '', 0),
(224, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:11:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"choices";a:4:{s:7:"default";s:7:"default";s:4:"gray";s:4:"gray";s:5:"white";s:5:"white";s:4:"none";s:4:"none";}s:12:"other_choice";i:1;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"parent_layout";s:13:"53c845a51edf5";}', 'Class', 'three_column_class', 'publish', 'open', 'open', '', 'field_53583729feea8', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=224', 28, 'acf-field', '', 0),
(225, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:13:"return_format";s:3:"url";s:13:"parent_layout";s:13:"53c845a51edf5";}', 'Background Image', 'three_column_bg', 'publish', 'open', 'open', '', 'field_53583729feea9', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=225', 29, 'acf-field', '', 0),
(226, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:56:"Make the background stay in place while the user scrolls";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a51edf5";}', 'Background Fixed', 'three_column_bg_fx', 'publish', 'open', 'open', '', 'field_53583729feeaa', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=226', 30, 'acf-field', '', 0),
(227, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:15:{s:4:"type";s:6:"number";s:12:"instructions";s:36:"Height at top and bottom of section.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";i:110;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";i:900;s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a51edf5";}', 'Vertical Padding', 'three_column_vertical_padding', 'publish', 'open', 'open', '', 'field_53583729feeab', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=227', 31, 'acf-field', '', 0),
(228, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a51edf5";}', 'Full Height', 'three_column_full_height', 'publish', 'open', 'open', '', 'field_53629177cb20a', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=228', 32, 'acf-field', '', 0),
(229, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a52e4b8";}', 'Left Column', 'left_col-md-6', 'publish', 'open', 'open', '', 'field_52b35f9fde07a', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=229', 33, 'acf-field', '', 0),
(230, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a52e4b8";}', 'Right Column', 'right_col-md-6', 'publish', 'open', 'open', '', 'field_52b35f9fde07c', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=230', 34, 'acf-field', '', 0),
(231, 1, '2014-08-25 15:35:32', '2014-08-25 19:35:32', 'a:11:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"choices";a:4:{s:7:"default";s:7:"default";s:4:"gray";s:4:"gray";s:5:"white";s:5:"white";s:4:"none";s:4:"none";}s:12:"other_choice";i:1;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"parent_layout";s:13:"53c845a52e4b8";}', 'Class', 'two_column_class', 'publish', 'open', 'open', '', 'field_52b35f9fde07d', '', '', '2014-08-25 15:35:32', '2014-08-25 19:35:32', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=231', 35, 'acf-field', '', 0),
(232, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:9:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:13:"return_format";s:3:"url";s:13:"parent_layout";s:13:"53c845a52e4b8";}', 'Background Image', 'two_column_bg', 'publish', 'open', 'open', '', 'field_52b35f9fde07e', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=232', 36, 'acf-field', '', 0),
(233, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:56:"Make the background stay in place while the user scrolls";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a52e4b8";}', 'Background Fixed', 'two_column_bg_fx', 'publish', 'open', 'open', '', 'field_52b35f9fde07f', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=233', 37, 'acf-field', '', 0),
(234, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:15:{s:4:"type";s:6:"number";s:12:"instructions";s:36:"Height at top and bottom of section.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:4:"-610";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";i:100;s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a52e4b8";}', 'Vertical Padding', 'two_column_vertical_padding', 'publish', 'open', 'open', '', 'field_52b35f9fde080', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=234', 38, 'acf-field', '', 0),
(235, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a52e4b8";}', 'Full Height', 'two_column_full_height', 'publish', 'open', 'open', '', 'field_53629226cb20b', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=235', 39, 'acf-field', '', 0),
(236, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53dfcdd17b85a";}', 'Left Column', 'left_col-md-6', 'publish', 'open', 'open', '', 'field_53dfcdd17b85b', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=236', 40, 'acf-field', '', 0),
(237, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:13:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53dfcdd17b85a";}', 'Left Column Animation', 'left_col-md-6_anim', 'publish', 'open', 'open', '', 'field_53dfcdfb7b862', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=237', 41, 'acf-field', '', 0),
(238, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53dfcdd17b85a";}', 'Right Column', 'right_col-md-6', 'publish', 'open', 'open', '', 'field_53dfcdd17b85c', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=238', 42, 'acf-field', '', 0),
(239, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:13:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53dfcdd17b85a";}', 'Right Column Animation', 'right_col-md-6_anim', 'publish', 'open', 'open', '', 'field_53dfce897b863', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=239', 43, 'acf-field', '', 0),
(240, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:10:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"choices";a:4:{s:7:"default";s:7:"default";s:4:"gray";s:4:"gray";s:5:"white";s:5:"white";s:4:"none";s:4:"none";}s:12:"other_choice";i:1;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"parent_layout";s:13:"53dfcdd17b85a";}', 'Class', 'two_column_class', 'publish', 'open', 'open', '', 'field_53dfcdd17b85d', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=240', 44, 'acf-field', '', 0),
(241, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:13:"parent_layout";s:13:"53dfcdd17b85a";}', 'Background Image', 'two_column_bg', 'publish', 'open', 'open', '', 'field_53dfcdd17b85e', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=241', 45, 'acf-field', '', 0),
(242, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:7:{s:4:"type";s:10:"true_false";s:12:"instructions";s:56:"Make the background stay in place while the user scrolls";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53dfcdd17b85a";}', 'Background Fixed', 'two_column_bg_fx', 'publish', 'open', 'open', '', 'field_53dfcdd17b85f', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=242', 46, 'acf-field', '', 0),
(243, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:14:{s:4:"type";s:6:"number";s:12:"instructions";s:36:"Height at top and bottom of section.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:4:"-610";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";i:100;s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53dfcdd17b85a";}', 'Vertical Padding', 'two_column_vertical_padding', 'publish', 'open', 'open', '', 'field_53dfcdd17b860', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=243', 47, 'acf-field', '', 0),
(244, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:7:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53dfcdd17b85a";}', 'Full Height', 'two_column_full_height', 'publish', 'open', 'open', '', 'field_53dfcdd17b861', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=244', 48, 'acf-field', '', 0),
(245, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:14:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a53b800";}', 'Title', 'jumbotron_title', 'publish', 'open', 'open', '', 'field_52b35fcfde082', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=245', 49, 'acf-field', '', 0),
(246, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:13:"parent_layout";s:13:"53c845a53b800";}', 'Body', 'jumbotron_body', 'publish', 'open', 'open', '', 'field_52b35fcfde083', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=246', 50, 'acf-field', '', 0),
(247, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:14:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a53b800";}', 'Button Text', 'jumbotron_btn_text', 'publish', 'open', 'open', '', 'field_52b36027de088', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=247', 51, 'acf-field', '', 0),
(248, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:14:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a53b800";}', 'Button Link', 'jumbotron_btn_link', 'publish', 'open', 'open', '', 'field_52b3604fde089', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=248', 52, 'acf-field', '', 0),
(249, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:11:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"choices";a:4:{s:7:"default";s:7:"default";s:4:"gray";s:4:"gray";s:5:"white";s:5:"white";s:4:"none";s:4:"none";}s:12:"other_choice";i:1;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"parent_layout";s:13:"53c845a53b800";}', 'Class', 'jumbotron_class', 'publish', 'open', 'open', '', 'field_52b35fcfde084', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=249', 53, 'acf-field', '', 0),
(250, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:9:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:13:"return_format";s:3:"url";s:13:"parent_layout";s:13:"53c845a53b800";}', 'Background Image', 'jumbotron_bg', 'publish', 'open', 'open', '', 'field_52b35fcfde085', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=250', 54, 'acf-field', '', 0),
(251, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:56:"Make the background stay in place while the user scrolls";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a53b800";}', 'Background Fixed', 'jumbotron_bg_fx', 'publish', 'open', 'open', '', 'field_52b35fcfde086', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=251', 55, 'acf-field', '', 0),
(252, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:12:{s:4:"type";s:8:"repeater";s:12:"instructions";s:11:"Add Buttons";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:10:"Add Button";s:3:"min";i:0;s:3:"max";i:0;s:13:"parent_layout";s:13:"53c845a53b800";}', 'Buttons', 'jumbotron_btn', 'publish', 'open', 'open', '', 'field_5359471b7e2c1', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=252', 56, 'acf-field', '', 0),
(253, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:15:{s:4:"type";s:6:"number";s:12:"instructions";s:36:"Height at top and bottom of section.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";i:110;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";i:900;s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a53b800";}', 'Vertical Padding', 'jumbotron_vertical_padding', 'publish', 'open', 'open', '', 'field_52b35fcfde087', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=253', 57, 'acf-field', '', 0),
(254, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a53b800";}', 'Full Height', 'jumbotron_full_height', 'publish', 'open', 'open', '', 'field_53629239cb20c', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=254', 58, 'acf-field', '', 0),
(255, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:13:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a554f6e";}', 'Text', 'well_body', 'publish', 'open', 'open', '', 'field_52b36094de08b', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=255', 59, 'acf-field', '', 0),
(256, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:11:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"choices";a:4:{s:7:"default";s:7:"default";s:4:"gray";s:4:"gray";s:5:"white";s:5:"white";s:4:"none";s:4:"none";}s:12:"other_choice";i:1;s:17:"save_other_choice";i:0;s:13:"default_value";s:0:"";s:6:"layout";s:10:"horizontal";s:13:"parent_layout";s:13:"53c845a554f6e";}', 'Class', 'well_class', 'publish', 'open', 'open', '', 'field_52b36094de08f', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=256', 60, 'acf-field', '', 0),
(257, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:9:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:13:"return_format";s:3:"url";s:13:"parent_layout";s:13:"53c845a554f6e";}', 'Background Image', 'well_bg', 'publish', 'open', 'open', '', 'field_52b36094de090', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=257', 61, 'acf-field', '', 0),
(258, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:56:"Make the background stay in place while the user scrolls";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a554f6e";}', 'Background Fixed', 'well_bg_fx', 'publish', 'open', 'open', '', 'field_52b36094de091', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=258', 62, 'acf-field', '', 0),
(259, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:15:{s:4:"type";s:6:"number";s:12:"instructions";s:36:"Height at top and bottom of section.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";i:110;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";i:900;s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;s:13:"parent_layout";s:13:"53c845a554f6e";}', 'Vertical Padding', 'well_vertical_padding', 'publish', 'open', 'open', '', 'field_52b36094de092', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=259', 63, 'acf-field', '', 0),
(260, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a554f6e";}', 'Full Height', 'well_full_height', 'publish', 'open', 'open', '', 'field_53629253cb20d', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=260', 64, 'acf-field', '', 0),
(261, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:12:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"row_min";s:0:"";s:9:"row_limit";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:7:"Add Tab";s:3:"min";i:0;s:3:"max";i:0;s:13:"parent_layout";s:13:"53c845a561b4f";}', 'Tab', 'tab', 'publish', 'open', 'open', '', 'field_52accec53c99d', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=261', 65, 'acf-field', '', 0),
(262, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:7:"message";s:0:"";s:13:"default_value";i:0;s:13:"parent_layout";s:13:"53c845a561b4f";}', 'Full Height', 'tab_full_height', 'publish', 'open', 'open', '', 'field_53629267cb20e', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 195, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=262', 66, 'acf-field', '', 0),
(263, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:13:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Button Text', 'jumbotron_btn_text', 'publish', 'open', 'open', '', 'field_5359479f7e2c2', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 252, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=263', 0, 'acf-field', '', 0),
(264, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:13:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Button Link', 'jumbotron_btn_link', 'publish', 'open', 'open', '', 'field_535948457e2c3', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 252, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=264', 1, 'acf-field', '', 0),
(265, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:13:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";i:20;s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Button Class', 'jumbotron_btn_class', 'publish', 'open', 'open', '', 'field_53595533d3b06', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 252, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=265', 2, 'acf-field', '', 0),
(266, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:13:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";i:20;s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Title', 'tab_title', 'publish', 'open', 'open', '', 'field_52accef43c99e', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 261, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=266', 0, 'acf-field', '', 0),
(267, 1, '2014-08-25 15:35:33', '2014-08-25 19:35:33', 'a:8:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:12:"column_width";i:80;s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Content', 'tab_content', 'publish', 'open', 'open', '', 'field_52accf033c99f', '', '', '2014-08-25 15:35:33', '2014-08-25 19:35:33', '', 261, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=267', 1, 'acf-field', '', 0),
(268, 1, '2014-08-25 15:35:54', '2014-08-25 19:35:54', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:35:54', '2014-08-25 19:35:54', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2014-08-25 15:35:59', '2014-08-25 19:35:59', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:35:59', '2014-08-25 19:35:59', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(270, 1, '2014-08-25 15:41:30', '2014-08-25 19:41:30', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em>\r\n\r\nLearn More &gt;\r\n\r\n---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America.\r\n\r\nWith a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly.\r\n\r\nFrom hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what.\r\n\r\nMore About BH Defense &gt;\r\n\r\n---\r\n\r\n<em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n---\r\n\r\n<em><strong>Technology Partners</strong></em>\r\n\r\n<img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" />\r\n\r\n<img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" />\r\n\r\n<img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:41:30', '2014-08-25 19:41:30', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(274, 1, '2014-08-25 15:50:42', '2014-08-25 19:50:42', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:50:42', '2014-08-25 19:50:42', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(275, 1, '2014-08-25 15:51:33', '2014-08-25 19:51:33', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-25 15:51:33', '2014-08-25 19:51:33', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(277, 1, '2014-08-25 16:24:56', '2014-08-25 20:24:56', '', 'footer-logo', '', 'inherit', 'open', 'open', '', 'footer-logo', '', '', '2014-08-25 16:24:56', '2014-08-25 20:24:56', '', 15, 'http://kmdig.com/client/bhdefense/media/footer-logo.png', 0, 'attachment', 'image/png', 0),
(278, 1, '2014-08-26 08:42:22', '2014-08-26 12:42:22', '<img class="alignleft size-full wp-image-277" src="http://kmdig.com/client/bhdefense/media/footer-logo.png" alt="footer-logo" /><br>\r\n\r\nUSA: +1-888-491-5060\r\nCyprus: +357 99 247 365\r\nJordan: +962-796056928\r\nIraq: +964-7905980279', '', '', 'publish', 'open', 'open', '', '278', '', '', '2014-08-26 08:42:22', '2014-08-26 12:42:22', '', 0, 'http://kmdig.com/client/bhdefense/?page_id=278', 0, 'page', '', 0),
(279, 1, '2014-08-26 08:42:22', '2014-08-26 12:42:22', '<img class="alignleft size-full wp-image-277" src="http://kmdig.com/client/bhdefense/media/footer-logo.png" alt="footer-logo" /><br>\r\n\r\nUSA: +1-888-491-5060\r\nCyprus: +357 99 247 365\r\nJordan: +962-796056928\r\nIraq: +964-7905980279', '', '', 'inherit', 'open', 'open', '', '278-revision-v1', '', '', '2014-08-26 08:42:22', '2014-08-26 12:42:22', '', 278, 'http://kmdig.com/client/bhdefense/278-revision-v1/', 0, 'revision', '', 0),
(280, 1, '2014-08-26 09:30:15', '2014-08-26 13:30:15', '', '', '', 'inherit', 'open', 'open', '', '278-autosave-v1', '', '', '2014-08-26 09:30:15', '2014-08-26 13:30:15', '', 278, 'http://kmdig.com/client/bhdefense/278-autosave-v1/', 0, 'revision', '', 0),
(284, 1, '2014-08-26 15:11:41', '2014-08-26 19:11:41', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-08-26 15:11:41', '2014-08-26 19:11:41', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1577, 1, '2014-07-23 14:52:09', '2014-07-23 14:52:09', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'BH Defense Facts and Figures', '', 'publish', 'closed', 'open', '', 'industry-facts-issues', '', '', '2014-09-08 08:48:56', '2014-09-08 12:48:56', '', 0, 'http://kmdig.com/client/himcloud/?p=1577', 0, 'post', '', 0),
(1651, 1, '2014-07-23 14:50:50', '2014-07-23 14:50:50', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Multiple Paragraph Post', '', 'publish', 'closed', 'open', '', 'multiple-paragraph-post', '', '', '2014-09-08 08:48:57', '2014-09-08 12:48:57', '', 0, 'http://kmdig.com/client/himcloud/multiple-paragraph-post/', 0, 'post', '', 0),
(1652, 1, '2014-07-23 14:50:50', '2014-07-23 14:50:50', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\n<img class="size-medium wp-image-1596 aligncenter" src="http://kmdig.com/client/himcloud/wp-content/uploads/2014/07/him-top-300x138.jpg" alt="him-top" width="300" height="138" />\n\n&nbsp;\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Image Post', '', 'publish', 'closed', 'open', '', 'image-post', '', '', '2014-09-08 08:48:57', '2014-09-08 12:48:57', '', 0, 'http://kmdig.com/client/himcloud/image-post/', 0, 'post', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1653, 1, '2014-07-23 14:50:50', '2014-07-23 14:50:50', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ul><li>First Item</li><li>Second Item</li><li>Third Item</li><li>Fourth Item</li><li>Fifth Item</li></ul><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ol><li>First Item</li><li>Second Item</li><li>Third Item</li><li>Fourth Item</li><li>Fifth Item</li></ol><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'UL and OL Post', '', 'publish', 'closed', 'open', '', 'ul-and-ol-post', '', '', '2014-09-08 08:48:57', '2014-09-08 12:48:57', '', 0, 'http://kmdig.com/client/himcloud/ul-and-ol-post/', 0, 'post', '', 0),
(1654, 1, '2014-07-23 14:50:50', '2014-07-23 14:50:50', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Blockquote Post', '', 'publish', 'closed', 'open', '', 'blockquote-post', '', '', '2014-09-08 08:48:57', '2014-09-08 12:48:57', '', 0, 'http://kmdig.com/client/himcloud/blockquote-post/', 0, 'post', '', 0),
(1655, 1, '2014-07-23 14:50:50', '2014-07-23 14:50:50', '<p>Lorem ipsum dolor sit amet, <a href="#">consectetur adipisicing</a> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href="#">Duis aute irure</a> dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <a href="#">deserunt</a> mollit anim id est laborum.</p>', 'Links Post', '', 'publish', 'closed', 'open', '', 'links-post', '', '', '2014-09-08 08:48:57', '2014-09-08 12:48:57', '', 0, 'http://kmdig.com/client/himcloud/links-post/', 0, 'post', '', 0),
(1656, 1, '2014-07-23 14:50:50', '2014-07-23 14:50:50', '<h1>This Is An H1 Tag</h1><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h2>This Is An H2 Tag</h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h3>This Is An H3 Tag</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h4>This Is An H4 Tag</h4><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h5>This Is An H5 Tag</h5><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Headers Post', '', 'publish', 'closed', 'open', '', 'headers-post', '', '', '2014-09-08 08:48:57', '2014-09-08 12:48:57', '', 0, 'http://kmdig.com/client/himcloud/headers-post/', 0, 'post', '', 0),
(1675, 1, '2014-07-23 14:59:36', '2014-07-23 14:59:36', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'Attacking Your Risks with BH Defense', '', 'publish', 'closed', 'open', '', 'secrets-becoming-himcloud-pro', '', '', '2014-09-08 08:48:56', '2014-09-08 12:48:56', '', 0, 'http://kmdig.com/client/himcloud/?p=1675', 0, 'post', '', 0),
(1678, 1, '2014-07-23 15:00:10', '2014-07-23 15:00:10', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'BH Defense Awarded $12 Million MOD to Existing Foreign Millitary Service (FMS) Contract', '', 'publish', 'closed', 'open', '', 'onsite-vs-offsite-really-matter', '', '', '2014-09-08 08:48:56', '2014-09-08 12:48:56', '', 0, 'http://kmdig.com/client/himcloud/?p=1678', 0, 'post', '', 0),
(1680, 1, '2014-07-23 15:00:49', '2014-07-23 15:00:49', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'Measure the ROI of BH Defense Risk Mitigation', '', 'publish', 'closed', 'open', '', 'coder-marketplace-blossoms', '', '', '2014-09-08 08:48:56', '2014-09-08 12:48:56', '', 0, 'http://kmdig.com/client/himcloud/?p=1680', 0, 'post', '', 0),
(1683, 1, '2014-07-23 15:04:42', '2014-07-23 15:04:42', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'ISO Certification for BH Defense\'s Risk Mitigation Methodology', '', 'publish', 'closed', 'open', '', 'icd-9-break-another-delay', '', '', '2014-09-08 08:48:56', '2014-09-08 12:48:56', '', 0, 'http://kmdig.com/client/himcloud/?p=1683', 0, 'post', '', 0),
(1684, 1, '2014-09-02 12:39:37', '2014-09-02 16:39:37', 'A nationwide shortage of medical coders is increasing the demand on employers to fill these positions. The 2010-2011 edition of the Occupational Outlook Handbook, published by the U.S. Department of Labor, estimates:\r\n<ul id="list">\r\n	<li class="light">37,700 new coding-related jobs before 2020</li>\r\n	<li class="dark">21% increase to the medical records and health information field, which is a much higher rate of growth than the average for other occupations (7% greater growth; national average for the same period is 14%)</li>\r\n	<li class="light">For larger hospital facilities, the transition cost alone to switch to ICD-10 is estimated at up to $5 million per facility</li>\r\n	<li class="dark">In total, the transition to ICD-10 will cost up to $8.2 billion solely in direct implementation costs</li>\r\n	<li class="light">The costs to renegotiate contracts associated with the transition, for example renegotiating contracts with third-party coding companies, will cost up to an additional $416 million on top of direct implementation costs</li>\r\n</ul>', 'ISO Certification for BH Defense\'s Risk Mitigation Methodology', '', 'inherit', 'open', 'open', '', '1683-revision-v1', '', '', '2014-09-02 12:39:37', '2014-09-02 16:39:37', '', 1683, 'http://kmdig.com/client/bhdefense/1683-revision-v1/', 0, 'revision', '', 0),
(1685, 1, '2014-09-02 12:40:05', '2014-09-02 16:40:05', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'ISO Certification for BH Defense\'s Risk Mitigation Methodology', '', 'inherit', 'open', 'open', '', '1683-revision-v1', '', '', '2014-09-02 12:40:05', '2014-09-02 16:40:05', '', 1683, 'http://kmdig.com/client/bhdefense/1683-revision-v1/', 0, 'revision', '', 0),
(1686, 1, '2014-09-02 12:40:41', '2014-09-02 16:40:41', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'Measure the ROI of BH Defense Risk Mitigation', '', 'inherit', 'open', 'open', '', '1680-revision-v1', '', '', '2014-09-02 12:40:41', '2014-09-02 16:40:41', '', 1680, 'http://kmdig.com/client/bhdefense/1680-revision-v1/', 0, 'revision', '', 0),
(1687, 1, '2014-09-02 12:41:28', '2014-09-02 16:41:28', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'BH Defense Awarded $12 Million MOD to Existing Foreign Millitary Service (FMS) Contract', '', 'inherit', 'open', 'open', '', '1678-revision-v1', '', '', '2014-09-02 12:41:28', '2014-09-02 16:41:28', '', 1678, 'http://kmdig.com/client/bhdefense/1678-revision-v1/', 0, 'revision', '', 0),
(1688, 1, '2014-09-02 12:41:52', '2014-09-02 16:41:52', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'BH Defense Facts and Figures', '', 'inherit', 'open', 'open', '', '1577-revision-v1', '', '', '2014-09-02 12:41:52', '2014-09-02 16:41:52', '', 1577, 'http://kmdig.com/client/bhdefense/1577-revision-v1/', 0, 'revision', '', 0),
(1689, 1, '2014-09-02 12:42:22', '2014-09-02 16:42:22', 'A nationwide shortage of medical coders is increasing the demand on employers to fill these positions. The 2010-2011 edition of the Occupational Outlook Handbook, published by the U.S. Department of Labor, estimates:\r\n<ul id="list">\r\n	<li class="light">37,700 new coding-related jobs before 2020</li>\r\n	<li class="dark">21% increase to the medical records and health information field, which is a much higher rate of growth than the average for other occupations (7% greater growth; national average for the same period is 14%)</li>\r\n	<li class="light">For larger hospital facilities, the transition cost alone to switch to ICD-10 is estimated at up to $5 million per facility</li>\r\n	<li class="dark">In total, the transition to ICD-10 will cost up to $8.2 billion solely in direct implementation costs</li>\r\n	<li class="light">The costs to renegotiate contracts associated with the transition, for example renegotiating contracts with third-party coding companies, will cost up to an additional $416 million on top of direct implementation costs</li>\r\n</ul>', 'Attacking Your Risks with BH Defense', '', 'inherit', 'open', 'open', '', '1675-revision-v1', '', '', '2014-09-02 12:42:22', '2014-09-02 16:42:22', '', 1675, 'http://kmdig.com/client/bhdefense/1675-revision-v1/', 0, 'revision', '', 0),
(1690, 1, '2014-09-02 12:42:28', '2014-09-02 16:42:28', 'BH Defense was recently awarded a $12M modification to its existing Foreign Military Sales (FMS) contract to support the International Iraqi Academy in Baghdad, Iraq through 31 March 2015. An additional $13M in funds are also being allocated to provide for a refurbishment of existing facilities with a new language lab, auditorium, barracks and other facilities needed to fully develop the academy support infrastructure.  The purpose of this large FMS contract is to enable the Government of Iraq to develop the capacity to run a Professional Military Education (PME) campus focused on developing Iraq’s senior military leadership to include administration, operations, facilities, and teaching excellence.  The IIA Security Assistance Team (SAT) objectives are to provide all necessary equipment, training, sustainment, and support for the IIA while simultaneously training the GOI personnel to assume all functions of IIA operations, with an end state of GOI personnel able to operate and sustain the IIA independently for three years after contract award.', 'Attacking Your Risks with BH Defense', '', 'inherit', 'open', 'open', '', '1675-revision-v1', '', '', '2014-09-02 12:42:28', '2014-09-02 16:42:28', '', 1675, 'http://kmdig.com/client/bhdefense/1675-revision-v1/', 0, 'revision', '', 0),
(1691, 1, '2014-09-02 12:44:29', '2014-09-02 16:44:29', '<h1>This Is An H1 Tag</h1><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h2>This Is An H2 Tag</h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h3>This Is An H3 Tag</h3><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h4>This Is An H4 Tag</h4><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><h5>This Is An H5 Tag</h5><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Headers Post', '', 'inherit', 'open', 'open', '', '1656-revision-v1', '', '', '2014-09-02 12:44:29', '2014-09-02 16:44:29', '', 1656, 'http://kmdig.com/client/bhdefense/1656-revision-v1/', 0, 'revision', '', 0),
(1692, 1, '2014-09-02 12:44:29', '2014-09-02 16:44:29', '<p>Lorem ipsum dolor sit amet, <a href="#">consectetur adipisicing</a> elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href="#">Duis aute irure</a> dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia <a href="#">deserunt</a> mollit anim id est laborum.</p>', 'Links Post', '', 'inherit', 'open', 'open', '', '1655-revision-v1', '', '', '2014-09-02 12:44:29', '2014-09-02 16:44:29', '', 1655, 'http://kmdig.com/client/bhdefense/1655-revision-v1/', 0, 'revision', '', 0),
(1693, 1, '2014-09-02 12:44:30', '2014-09-02 16:44:30', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'Blockquote Post', '', 'inherit', 'open', 'open', '', '1654-revision-v1', '', '', '2014-09-02 12:44:30', '2014-09-02 16:44:30', '', 1654, 'http://kmdig.com/client/bhdefense/1654-revision-v1/', 0, 'revision', '', 0),
(1694, 1, '2014-09-02 12:44:30', '2014-09-02 16:44:30', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ul><li>First Item</li><li>Second Item</li><li>Third Item</li><li>Fourth Item</li><li>Fifth Item</li></ul><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><ol><li>First Item</li><li>Second Item</li><li>Third Item</li><li>Fourth Item</li><li>Fifth Item</li></ol><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>', 'UL and OL Post', '', 'inherit', 'open', 'open', '', '1653-revision-v1', '', '', '2014-09-02 12:44:30', '2014-09-02 16:44:30', '', 1653, 'http://kmdig.com/client/bhdefense/1653-revision-v1/', 0, 'revision', '', 0),
(1695, 1, '2014-09-02 12:44:30', '2014-09-02 16:44:30', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\n<img class="size-medium wp-image-1596 aligncenter" src="http://kmdig.com/client/himcloud/wp-content/uploads/2014/07/him-top-300x138.jpg" alt="him-top" width="300" height="138" />\n\n&nbsp;\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Image Post', '', 'inherit', 'open', 'open', '', '1652-revision-v1', '', '', '2014-09-02 12:44:30', '2014-09-02 16:44:30', '', 1652, 'http://kmdig.com/client/bhdefense/1652-revision-v1/', 0, 'revision', '', 0),
(1696, 1, '2014-09-02 12:44:30', '2014-09-02 16:44:30', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Multiple Paragraph Post', '', 'inherit', 'open', 'open', '', '1651-revision-v1', '', '', '2014-09-02 12:44:30', '2014-09-02 16:44:30', '', 1651, 'http://kmdig.com/client/bhdefense/1651-revision-v1/', 0, 'revision', '', 0),
(1697, 1, '2014-09-02 12:45:02', '2014-09-02 16:45:02', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Multiple Paragraph Post', '', 'inherit', 'open', 'open', '', '1651-revision-v1', '', '', '2014-09-02 12:45:02', '2014-09-02 16:45:02', '', 1651, 'http://kmdig.com/client/bhdefense/1651-revision-v1/', 0, 'revision', '', 0),
(1699, 1, '2014-09-04 12:40:08', '2014-09-04 16:40:08', 'a:4:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;}', 'Slider', '', 'publish', 'open', 'open', '', 'field_540895598e577', '', '', '2014-09-04 12:40:08', '2014-09-04 16:40:08', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=1699', 0, 'acf-field', '', 0),
(1700, 1, '2014-09-04 12:40:08', '2014-09-04 16:40:08', 'a:4:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;}', 'Callout', '', 'publish', 'open', 'open', '', 'field_5408957c8e578', '', '', '2014-09-04 12:40:08', '2014-09-04 16:40:08', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=1700', 2, 'acf-field', '', 0),
(1701, 1, '2014-09-04 12:40:08', '2014-09-04 16:40:08', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Callout Title', 'home_callout_title', 'publish', 'open', 'open', '', 'field_540894758e576', '', '', '2014-09-04 16:39:06', '2014-09-04 20:39:06', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&#038;p=1701', 3, 'acf-field', '', 0),
(1702, 1, '2014-09-04 12:40:08', '2014-09-04 16:40:08', 'a:7:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:0:"";s:7:"toolbar";s:5:"basic";s:12:"media_upload";i:0;}', 'Callout Paragraph', 'home_callout_paragraph', 'publish', 'open', 'open', '', 'field_5408958c8e579', '', '', '2014-09-04 16:39:06', '2014-09-04 20:39:06', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&#038;p=1702', 4, 'acf-field', '', 0),
(1703, 1, '2014-09-04 12:40:08', '2014-09-04 16:40:08', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Callout Button Link', 'home_callout_button_link', 'publish', 'open', 'open', '', 'field_540895af8e57a', '', '', '2014-09-04 16:39:06', '2014-09-04 20:39:06', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&#038;p=1703', 5, 'acf-field', '', 0),
(1704, 1, '2014-09-04 12:41:13', '2014-09-04 16:41:13', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-04 12:41:13', '2014-09-04 16:41:13', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1705, 1, '2014-09-04 16:39:06', '2014-09-04 20:39:06', 'a:4:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;}', 'Main', '', 'publish', 'open', 'open', '', 'field_5408cd643d59e', '', '', '2014-09-04 16:39:06', '2014-09-04 20:39:06', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=1705', 6, 'acf-field', '', 0),
(1706, 1, '2014-09-04 16:39:06', '2014-09-04 20:39:06', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Main Title', 'home_main_title', 'publish', 'open', 'open', '', 'field_5408cd723d59f', '', '', '2014-09-04 16:39:06', '2014-09-04 20:39:06', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=1706', 7, 'acf-field', '', 0),
(1707, 1, '2014-09-04 16:39:06', '2014-09-04 20:39:06', 'a:7:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:0:"";s:7:"toolbar";s:5:"basic";s:12:"media_upload";i:0;}', 'Main body', 'home_main_body', 'publish', 'open', 'open', '', 'field_5408cd833d5a0', '', '', '2014-09-04 16:39:06', '2014-09-04 20:39:06', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=1707', 8, 'acf-field', '', 0),
(1708, 1, '2014-09-04 16:39:06', '2014-09-04 20:39:06', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Link Text', 'home_main_link_text', 'publish', 'open', 'open', '', 'field_5408cdb03d5a1', '', '', '2014-09-04 16:39:06', '2014-09-04 20:39:06', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=1708', 9, 'acf-field', '', 0),
(1709, 1, '2014-09-04 16:39:06', '2014-09-04 20:39:06', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Main link', 'home_main_link', 'publish', 'open', 'open', '', 'field_5408cdd33d5a2', '', '', '2014-09-04 16:39:06', '2014-09-04 20:39:06', '', 168, 'http://kmdig.com/client/bhdefense/?post_type=acf-field&p=1709', 10, 'acf-field', '', 0),
(1710, 1, '2014-09-04 17:09:31', '2014-09-04 21:09:31', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-04 17:09:31', '2014-09-04 21:09:31', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1711, 1, '2014-09-04 18:03:42', '2014-09-04 22:03:42', ' ', '', '', 'publish', 'open', 'open', '', '1711', '', '', '2014-09-04 18:06:52', '2014-09-04 22:06:52', '', 0, 'http://kmdig.com/client/bhdefense/?p=1711', 1, 'nav_menu_item', '', 0),
(1712, 1, '2014-09-04 18:03:42', '2014-09-04 22:03:42', ' ', '', '', 'publish', 'open', 'open', '', '1712', '', '', '2014-09-04 18:06:52', '2014-09-04 22:06:52', '', 0, 'http://kmdig.com/client/bhdefense/?p=1712', 2, 'nav_menu_item', '', 0),
(1713, 1, '2014-09-05 15:31:18', '2014-09-05 19:31:18', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-05 15:31:18', '2014-09-05 19:31:18', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1714, 1, '2014-09-08 08:44:52', '2014-09-08 12:44:52', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 08:44:52', '2014-09-08 12:44:52', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1715, 1, '2014-09-08 08:45:06', '2014-09-08 12:45:06', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 08:45:06', '2014-09-08 12:45:06', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1716, 1, '2014-09-08 08:45:56', '2014-09-08 12:45:57', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 08:45:56', '2014-09-08 12:45:57', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1717, 1, '2014-09-08 08:46:48', '2014-09-08 12:46:48', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 08:46:48', '2014-09-08 12:46:48', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1718, 1, '2014-09-08 08:47:56', '2014-09-08 12:47:56', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 08:47:56', '2014-09-08 12:47:56', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1722, 1, '2014-09-08 11:09:44', '2014-09-08 15:09:44', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 11:09:44', '2014-09-08 15:09:44', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1725, 1, '2014-09-08 11:53:22', '2014-09-08 15:53:22', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 11:53:22', '2014-09-08 15:53:22', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1726, 1, '2014-09-08 11:57:55', '2014-09-08 15:57:55', '', 'slide-activated', '', 'inherit', 'open', 'open', '', 'slide-activated-3', '', '', '2014-09-08 11:57:55', '2014-09-08 15:57:55', '', 5, 'http://kmdig.com/client/bhdefense/media/slide-activated2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1727, 1, '2014-09-08 11:57:57', '2014-09-08 15:57:57', '', 'slide-anticipated', '', 'inherit', 'open', 'open', '', 'slide-anticipated-3', '', '', '2014-09-08 11:57:57', '2014-09-08 15:57:57', '', 5, 'http://kmdig.com/client/bhdefense/media/slide-anticipated2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1728, 1, '2014-09-08 11:58:07', '2014-09-08 15:58:07', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 11:58:07', '2014-09-08 15:58:07', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1729, 1, '2014-09-08 12:01:21', '2014-09-08 16:01:21', '', 'slide-identified', '', 'inherit', 'open', 'open', '', 'slide-identified', '', '', '2014-09-08 12:01:21', '2014-09-08 16:01:21', '', 5, 'http://kmdig.com/client/bhdefense/media/slide-identified.jpg', 0, 'attachment', 'image/jpeg', 0),
(1730, 1, '2014-09-08 12:01:27', '2014-09-08 16:01:27', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 12:01:27', '2014-09-08 16:01:27', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1731, 1, '2014-09-08 12:03:37', '2014-09-08 16:03:37', '<h2>Critical infrastructure risks: IDENTIFIED</h2>\r\n<h2>Security and safeguards: ACTIVATED</h2>\r\n<h2>Emerging threats and challenges: ANTICIPATED</h2>\r\n---\r\n<h3>We attack your risks before they attack your success.</h3>\r\n<em><strong>Cyber threats. Natural disasters. Supply chain disruption. Extreme environments. </strong></em> Learn More &gt; ---\r\n<h3>Mitigating Risk in Difficult Places.</h3>\r\nBH Defense is a trusted partner for risk assessment, mitigation, and prevention for government, military and commercial organizations in the Middle East, Europe, and North America. With a track record of 100% success in mitigating risks in the world’s most difficult environments (including current on-the-ground operations in Iraq), BH Defense delivers air-tight plans for securing every facet of critical infrastructure. Plus BH Defense uses hands-on expertise with security, logistics, training and construction to put those plans into action—fast and flawlessly. From hackers, corruption or natural disasters at home, to risks that threaten market expansion or war zone operations, BH Defense improves the certainty of success no matter what. More About BH Defense &gt; --- <em><strong>See how BH Defense mitigates risks in specific industries:</strong></em>\r\n<ul>\r\n	<li>IT &amp; Communications</li>\r\n	<li>Power (Electric/Oil/Gas)</li>\r\n	<li>Water Supply</li>\r\n	<li>Government Services</li>\r\n	<li>Healthcare</li>\r\n	<li>Transportation</li>\r\n	<li>Finance/Banking</li>\r\n</ul>\r\n--- <em><strong>Technology Partners</strong></em> <img class="alignleft size-full wp-image-11" src="http://kmdig.com/client/bhdefense/media/airpatrol.png" alt="airpatrol" width="205" height="64" /> <img class="alignleft  wp-image-12" src="http://kmdig.com/client/bhdefense/media/bosch.png" alt="bosch" width="209" height="67" /> <img class="alignleft  wp-image-13" src="http://kmdig.com/client/bhdefense/media/nflabs.png" alt="nflabs" width="205" height="39" />', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-09-08 12:03:37', '2014-09-08 16:03:37', '', 5, 'http://kmdig.com/client/bhdefense/5-revision-v1/', 0, 'revision', '', 0),
(1732, 1, '2014-09-08 15:53:01', '2014-09-08 19:53:01', '', 'header-sample', '', 'inherit', 'open', 'open', '', 'header-sample', '', '', '2014-09-08 15:53:01', '2014-09-08 19:53:01', '', 15, 'http://kmdig.com/client/bhdefense/media/header-sample.jpg', 0, 'attachment', 'image/jpeg', 0),
(1733, 1, '2014-09-08 15:53:02', '2014-09-08 19:53:02', '', 'header-sample2', '', 'inherit', 'open', 'open', '', 'header-sample2', '', '', '2014-09-08 15:53:02', '2014-09-08 19:53:02', '', 15, 'http://kmdig.com/client/bhdefense/media/header-sample2.jpg', 0, 'attachment', 'image/jpeg', 0),
(1734, 1, '2014-09-08 15:53:03', '2014-09-08 19:53:03', '', 'header-sample3', '', 'inherit', 'open', 'open', '', 'header-sample3', '', '', '2014-09-08 15:53:03', '2014-09-08 19:53:03', '', 15, 'http://kmdig.com/client/bhdefense/media/header-sample3.jpg', 0, 'attachment', 'image/jpeg', 0),
(1735, 1, '2014-09-10 14:12:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-09-10 14:12:24', '0000-00-00 00:00:00', '', 0, 'http://kmdig.com/client/bhdefense/?p=1735', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form`
#

DROP TABLE IF EXISTS `wp_rg_form`;


#
# Table structure of table `wp_rg_form`
#

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_form`
#

#
# End of data contents of table `wp_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_rg_form_meta`;


#
# Table structure of table `wp_rg_form_meta`
#

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext,
  `entries_grid_meta` longtext,
  `confirmations` longtext,
  `notifications` longtext,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_form_meta`
#

#
# End of data contents of table `wp_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_view`
#

DROP TABLE IF EXISTS `wp_rg_form_view`;


#
# Table structure of table `wp_rg_form_view`
#

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_form_view`
#

#
# End of data contents of table `wp_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead`
#

DROP TABLE IF EXISTS `wp_rg_lead`;


#
# Table structure of table `wp_rg_lead`
#

CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL,
  `source_url` varchar(200) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `currency` varchar(5) DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead`
#

#
# End of data contents of table `wp_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail`;


#
# Table structure of table `wp_rg_lead_detail`
#

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_detail`
#

#
# End of data contents of table `wp_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;


#
# Table structure of table `wp_rg_lead_detail_long`
#

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_detail_long`
#

#
# End of data contents of table `wp_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_rg_lead_meta`;


#
# Table structure of table `wp_rg_lead_meta`
#

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_meta`
#

#
# End of data contents of table `wp_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_rg_lead_notes`;


#
# Table structure of table `wp_rg_lead_notes`
#

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_notes`
#

#
# End of data contents of table `wp_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(77, 2, 0),
(78, 2, 0),
(80, 2, 0),
(81, 2, 0),
(82, 2, 0),
(83, 1, 0),
(91, 3, 0),
(92, 3, 0),
(93, 3, 0),
(94, 4, 0),
(95, 4, 0),
(96, 5, 0),
(97, 5, 0),
(99, 6, 0),
(100, 6, 0),
(101, 6, 0),
(102, 6, 0),
(103, 6, 0),
(104, 6, 0),
(105, 6, 0),
(106, 7, 0),
(107, 7, 0),
(108, 7, 0),
(109, 8, 0),
(110, 8, 0),
(111, 8, 0),
(112, 8, 0),
(113, 8, 0),
(114, 8, 0),
(115, 8, 0),
(148, 6, 0),
(155, 5, 0),
(156, 4, 0),
(1577, 1, 0),
(1577, 9, 0),
(1651, 9, 0),
(1652, 1, 0),
(1652, 9, 0),
(1653, 1, 0),
(1653, 9, 0),
(1654, 1, 0),
(1654, 9, 0),
(1655, 1, 0),
(1655, 9, 0),
(1656, 1, 0),
(1656, 9, 0),
(1675, 9, 0),
(1678, 9, 0),
(1680, 9, 0),
(1683, 9, 0),
(1711, 10, 0),
(1712, 10, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  `custom_order` int(11) NOT NULL DEFAULT '9999',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`),
  KEY `custom_order_index` (`custom_order`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`, `custom_order`) VALUES
(1, 1, 'category', '', 0, 6, 9999),
(2, 2, 'nav_menu', '', 0, 6, 9999),
(3, 3, 'nav_menu', '', 0, 3, 9999),
(4, 4, 'nav_menu', '', 0, 3, 9999),
(5, 5, 'nav_menu', '', 0, 3, 9999),
(6, 6, 'nav_menu', '', 0, 8, 9999),
(7, 7, 'nav_menu', '', 0, 3, 9999),
(8, 8, 'nav_menu', '', 0, 7, 9999),
(9, 9, 'category', '', 0, 11, 9999),
(10, 10, 'nav_menu', '', 0, 2, 9999) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Navigation', 'primary-navigation', 0),
(3, 'Partners', 'partners', 0),
(4, 'News &amp; Resources', 'news-resources', 0),
(5, 'About', 'about', 0),
(6, 'Customers', 'customers', 0),
(7, 'The Stakes', 'the-stakes', 0),
(8, 'Solutions', 'solutions', 0),
(9, 'News', 'news', 0),
(10, 'Top', 'top', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'kmdig'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_user-settings', 'imgsize=full&hidetb=1&editor=tinymce&galfile=1&galcols=1&galord=title&libraryContent=browse&urlbutton=none&wplink=1&align=left'),
(15, 1, 'wp_user-settings-time', '1410180288'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '1735'),
(17, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:"wpseo_meta";}'),
(18, 1, 'metaboxhidden_page', 'a:6:{i:0;s:23:"acf-group_53c845a4a5f08";i:1;s:23:"acf-group_53c845a4cc0af";i:2;s:12:"revisionsdiv";i:3;s:10:"postcustom";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(22, 1, 'session_tokens', 'a:3:{s:64:"b113829d79a7867579d756df53c150e957b133e93982df07ca89310d497ded14";i:1410534386;s:64:"657ab1db87b4d84e9b6c333ffa932d31aec7dbe46befa2b768bf93f03e349782";i:1410550827;s:64:"c62a937837098d27acece7e89ae7c5f3d7c4df609f08cec3395b6c490f2a28c8";i:1410620773;}'),
(23, 1, 'wp_media_library_mode', 'grid') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kmdig', '$P$BbqAcWL6HoclzDBl5nxwylFnTsETod1', 'kmdig', 'info@kmdig.com', '', '2014-08-25 14:40:49', '', 0, 'kmdig') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in
#

