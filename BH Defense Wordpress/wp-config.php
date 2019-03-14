<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'bhd_cms' );

/** MySQL database username */
define( 'DB_USER', 'bhd_cms' );

/** MySQL database password */
define( 'DB_PASSWORD', 'kx6oWTD6b8' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'ktj7wkgns0decstxccw5ghzhdvclkdu6lbsujywsegsnk7i6jg4uqnvu6igqrmpm');
define('SECURE_AUTH_KEY',  '6vuinkn2supw1pnal1pncb8fucwjz7zidopxkh0ibeir9zpclegwyfbfixwpithv');
define('LOGGED_IN_KEY',    'qjiwzvphuscly8ftrqqkdio6aehwnqmeqdxv3uwgrshqw3og9686bybn6j0kt2gx');
define('NONCE_KEY',        'wj5gga572sysnne4lkumlxvjjn7o4wyg5dsmcqvqvvesp3kulridsklgxhl8h0vd');
define('AUTH_SALT',        'nrprtbnbekko7moftanpnd1s4fnijq3vyjqh1e4okengpv5lcpluiegkrgmmnscq');
define('SECURE_AUTH_SALT', 'hrinv6s6z0wpsatr5ct5m4vdratymni15notdqyyygdoynckpdnis6fp87trjarj');
define('LOGGED_IN_SALT',   'x8ervkyg1bxlrgsajf2izei4alkwh25xenktqeorsvyqv6rizzrx0qltrkbo6ecb');
define('NONCE_SALT',       'jygluzygqpe2w2u5t9fpuxjspr9xqhgz3kfujjgp2ucozr59ewmumavbpnksypso');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
define( 'WP_AUTO_UPDATE_CORE', false );
