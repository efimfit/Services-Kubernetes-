<?php

$cfg['blowfish_secret'] = 'a1s2d3f4g5h6j7'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */
$i = 0;
$i++;

$cfg['Servers'][$i]['auth_type'] = 'cookie';
$cfg['Servers'][$i]['host'] = 'mysql-service';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = false;


$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';

?>
