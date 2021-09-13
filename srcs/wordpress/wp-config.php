<?php

define( 'DB_NAME', 'wordpresso' );
define( 'DB_USER', 'justin' );
define( 'DB_PASSWORD', 'bieber' );
define( 'DB_HOST', 'mysql-service' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define('WP_HOME', 'http://192.168.99.182:5050');

define('WP_SITEURL', 'http://192.168.99.182:5050');

define('AUTH_KEY',         'vEc@%QF=([&-HCs7|.Wl*#-| i_&{%^yJxK$cGLn7lKp:?}O-E+9<V%`Dcy?GqLq');
define('SECURE_AUTH_KEY',  'C&3UWF(hRb~KVG1K3!AZ|M*Koy3V(N^4]1-*g9W#s8#$CLD|6l2`mS`f>brpF)f^');
define('LOGGED_IN_KEY',    ':Qo@E-rbCn=o?At-/LzS-DRoZ1&hY?FN@&q]T<8b(wFl#-Vy_PUDa=r0d4_-%S<)');
define('NONCE_KEY',        '+=]RGIfG~DEIQ^G<GZP}&MjHL5+ $k(1v$H}|*Ip,? q5{Q]6uQH4I;N$Nl[im y');
define('AUTH_SALT',        ',!G3[cF^Kl!ulXC^|8XB`fM|E|Sk|IjNm!#*=T:O2LFuyl_yvvlAhpS|QiBZ,+S=');
define('SECURE_AUTH_SALT', 'q8A0U4@uM<!FmedO2_}VGxFDDQ*};`2tI3`8k=+e_FRp>E,D984]Ep3aB-@?e&El');
define('LOGGED_IN_SALT',   'e8l-),[aDH{tT~Vnq&~|d$]p:aTk-IaiVi.9-C6?k@M>{DbA(cB1-VQC8#1ku~Z>');
define('NONCE_SALT',       '{CP#nQ#f{}D*}nli?Z)v-spG1]|vtyS$LKMl*lsJ.94|,NrC^Ye-q:3ks~ymk-+7');

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
