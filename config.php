<?php

$DB_SERVER = 'localhost';
$DB_USERNAME = 'root';
$DB_PASSWORD = '';
$DB_DATABASE = 'php_ajax';

$conn = mysqli_connect($DB_SERVER, $DB_USERNAME, $DB_PASSWORD, $DB_DATABASE);

if (!$conn) {
	
	echo "Connection Failed " . mysqli_connect_error() OR die();
}
