<?php

// BEGIN iThemes Security - Do not modify or remove this line
// iThemes Security Config Details: 2
define( 'DISALLOW_FILE_EDIT', FALSE ); // Disable File Editor - Security > Settings > WordPress Tweaks > File Editor
// END iThemes Security - Do not modify or remove this line

# Database Configuration
define( 'DB_NAME', 'wp_kaplan2018' );
define( 'DB_USER', 'kaplan2018' );
define( 'DB_PASSWORD', 'T3vOK6o7WJ0AbgHyiCBp' );
define( 'DB_HOST', '127.0.0.1' );
define( 'DB_HOST_SLAVE', '127.0.0.1' );
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', 'utf8_unicode_ci');
$table_prefix = 'wp_';
# Security Salts, Keys, Etc
define('AUTH_KEY',         'A#WG:-FHpg`.iJ)bv|r]1nWMbH26-Om:fsT-TTu_QGUFK]eP@}Yx:Ea&It&|)|=|');
define('SECURE_AUTH_KEY',  '-^.E-JXNwVftrU<!(fmF3UJI5l0=OYxzVZmsoc><dB+#R|.&8L><T{Z3W!iE&ckL');
define('LOGGED_IN_KEY',    'CN/*th7@e/@;|hn4I]3H5Lu[)|N8w%rRe2WZH9;i-^y5XgCu+]ji8+XiW*k8I54t');
define('NONCE_KEY',        'M99/JHSV<-qHzM|h%yl0>?xx_`cKmboe1Yij+<7Ktq eu+bqg:-FaG~q`*QdZ9J6');
define('AUTH_SALT',        'l6Ne(bo|w|yF!>+Md=(HVFHcege>#}FnJ8uTe1R_C:cs;Q+UL9hZ(]gW#|_dmDib');
define('SECURE_AUTH_SALT', 'YB-2l9Ro3VVYD-F@(m-fEB<H [kx-+MOB;zhG4W_*fq15gp.w{%b._N1xWmNeKmo');
define('LOGGED_IN_SALT',   '$TSOkgCp|dX)B0jRBts4/],G.8]3~W2~`BTwZK<){z2&iG65qUj>E1LB$FGc$9#j');
define('NONCE_SALT',       '-ARX3 B[jRfcnrdmn/u`Lgm]!CyZ7ICxbeIHj;K_3w45.t~K@GKZRtxD_+I)I@qN');
# Localized Language Stuff
define( 'WP_CACHE', TRUE );
define( 'WP_AUTO_UPDATE_CORE', false );
define( 'PWP_NAME', 'kaplan2018' );
define( 'FS_METHOD', 'direct' );
define( 'FS_CHMOD_DIR', 0775 );
define( 'FS_CHMOD_FILE', 0664 );
define( 'PWP_ROOT_DIR', '/nas/wp' );
define( 'WPE_APIKEY', '9372970a4c7e05c664ffd37dad63742a5de9535b' );
define( 'WPE_CLUSTER_ID', '113261' );
define( 'WPE_CLUSTER_TYPE', 'pod' );
define( 'WPE_ISP', true );
define( 'WPE_BPOD', false );
define( 'WPE_RO_FILESYSTEM', false );
define( 'WPE_LARGEFS_BUCKET', 'largefs.wpengine' );
define( 'WPE_SFTP_PORT', 2222 );
define( 'WPE_LBMASTER_IP', '' );
define( 'WPE_CDN_DISABLE_ALLOWED', true );
define( 'DISALLOW_FILE_MODS', FALSE );
define( 'DISALLOW_FILE_EDIT', FALSE );
define( 'DISABLE_WP_CRON', false );
define( 'WPE_FORCE_SSL_LOGIN', false );
define( 'FORCE_SSL_LOGIN', false );
/*SSLSTART*/ if ( isset($_SERVER['HTTP_X_WPE_SSL']) && $_SERVER['HTTP_X_WPE_SSL'] ) $_SERVER['HTTPS'] = 'on'; /*SSLEND*/
define( 'WPE_EXTERNAL_URL', false );
define( 'WP_POST_REVISIONS', FALSE );
define( 'WPE_WHITELABEL', 'wpengine' );
define( 'WP_TURN_OFF_ADMIN_BAR', false );
define( 'WPE_BETA_TESTER', false );
umask(0002);
$wpe_cdn_uris=array ( );
$wpe_no_cdn_uris=array ( );
$wpe_content_regexs=array ( );
$wpe_all_domains=array ( 0 => 'kaplan2018.wpengine.com', );
$wpe_varnish_servers=array ( 0 => 'pod-113261', );
$wpe_special_ips=array ( 0 => '104.196.234.53', );
$wpe_ec_servers=array ( );
$wpe_largefs=array ( );
$wpe_netdna_domains=array ( );
$wpe_netdna_domains_secure=array ( );
$wpe_netdna_push_domains=array ( );
$wpe_domain_mappings=array ( );
$memcached_servers=array ( );
define('WPLANG','');
# WP Engine ID
# WP Engine Settings
# That's It. Pencils down
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');
$_wpe_preamble_path = null; if(false){}
