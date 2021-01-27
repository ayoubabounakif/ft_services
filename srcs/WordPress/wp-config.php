<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_database' );

/** MySQL database username */
define( 'DB_USER', 'wp_user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'aabounak' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-service' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '*=z+UF1X-7p(pvP+Z(F,#&y*QJV$=}!g^k.x8ceo0*_|4#3>03cP*s.ocU|>jUAx');
define('SECURE_AUTH_KEY',  ']_KGA)>HS29)D-oZ`]}- X%<_jz|pE`vG64D!X]++yP,?I1Z/](Lh&|C@oZz>8g^');
define('LOGGED_IN_KEY',    'SYac {*e:]qhDEe|JiYv#VggG(6N&P1E58K#{]szN,B)/NLOF.rE`/;}+meNf)yh');
define('NONCE_KEY',        'vM:3^bA&c7~<-t4VpXAOmy>-=@kWf .uw,vX~I3hWv*F|((</bO<-HA,y+8}t%(}');
define('AUTH_SALT',        '+5=d:`s]=O4m)<y*]+6_.T++=GTv<#-$L19bkO)>[#`!X:!$w7e9~Smvb3LTW%O-');
define('SECURE_AUTH_SALT', 'cQ9y`)WmDKc7{x(g@u{-E-7 ~-]6$a({fSp :.TNX4mE~T#6.+H@u[5N( Vb-H9v');
define('LOGGED_IN_SALT',   '|QJ_T&rj4`VJ7@+yILS0Hs=LKD5D@8tOnY7]S>nx|+ID+8MMn*.@A`NB*}xHY a-');
define('NONCE_SALT',       '.wcSRY<^UPHG2?69v|6s*0H[M]8WjQogV6)iAHz59P7sungz}pu9}Ktok{*?Y5QZ');

/**#@-*/

/**
 * WordPress Database Table prefix.
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

# Fixes CSS problems
define('CONCATENATE_SCRIPTS', false);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
