<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'juiceee' );

/** Database password */
define( 'DB_PASSWORD', 'loul' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ':Vq]>U#J1XTkl{e[e|~~N|D*TQIT3EOe9SHza:R|.r>0_03*Gz?)zI*3WL1$KD//');
define('SECURE_AUTH_KEY',  '.D A b-}p~@D>lQW:f{Sh>vcipkKu+!]~=gtRjiy9F`(Q/2]D(4lR$U[~ok0|lk>');
define('LOGGED_IN_KEY',    'c6J9[wK$z$4|OCQT&(1/DkAp@N5OP>:>z`}r+||[Ltq+$M:=7LO[483n(jCm-+Q7');
define('NONCE_KEY',        '3s47rs9EhA|vEwwHb_ZrL6bQPPQ`dexD,PUMV/%G!9)NpZ-|YxjQf^N|WK=N-6If');
define('AUTH_SALT',        '84WZv)lX($$-~mg-lS G>gULyrQ<^gQ%n=C+rrJ&V3./6Yo&d+.m?bMJYJjrKSP=');
define('SECURE_AUTH_SALT', 'F%nga#]#q}wk|lchw.h:1{TMa|ceueO4aO(qbJd;IwmJ*hLD0t@fN^-/&+;(x9.k');
define('LOGGED_IN_SALT',   'fb2o8FZ.`=]g a,2MaPk+dth{-VT+$n1|]T4s3)O4|:%(tZx]nzqr:xYeScw;xov');
define('NONCE_SALT',       'U-*vC$^6$Kc5]w7qWG~T./U?va>,mQe;KyUE3cM3{ci%-<3>qZ@7:c124sy6Z=$O');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */


/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
