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
define('AUTH_KEY',         'r5qM-i#l]-KrTO4Xkt9/=/x#e:[%bT{W8KC[jW%c?,rarAzz6vdl)R7 &UUgJh>h');
define('SECURE_AUTH_KEY',  '|D*m+,fue#JJdc|-%@0,dIyVc!LuSsx<c~O<ETJn.3{lJJU}?zCjCbSYc7PY8Fn0');
define('LOGGED_IN_KEY',    '+{;/Y:vM+8|{L*aUnge&W] *c#7,{&m^RU=;t0dp+E;dqTRX+[-qDH*1 +`DO)Zs');
define('NONCE_KEY',        '1o4->v-._>]RWgbFspSQnS>C=V|UP=M%AH>]5J:D~lz@H^89(2.zZ~hyN}-Fgl~|');
define('AUTH_SALT',        'QpO/,BNN+[:B{GXzk%Ae:%n-`re2zj(xO9Irt0-x+I.DIXB@k^ -mStx/VfIh`3(');
define('SECURE_AUTH_SALT', 'b_VrDP>q[t@ITnI;a!~c1V 1^s|C)|mBd@tQ2rm,sq!;C(-?YTCu<{_+Gs,{fAk!');
define('LOGGED_IN_SALT',   'FNpt4XC9c,/PpoP>|EdaLKzniUlKyG4Zbq-}DGGVCs/ $!n1{2+/!I)T=.*CKsf7');
define('NONCE_SALT',       'f4f7erC.br@OlZgDps}M1S9[+]:F5N~3#xIl}Q+W5v?/Pg]5wFch[+K>6iW+tz`V');

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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';