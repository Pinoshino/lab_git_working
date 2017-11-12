<?php
header("Content-type: application/x-javascript");
$ip_address = $_SERVER['REMOTE_ADDR'];
echo "ipAddress = '" . $ip_address . "';";
?>
