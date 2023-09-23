<?php
ob_start();
//start session 
session_start();


// create constants to store Non repeating Values
define('SITEURL','http://localhost/clothes-order/');
define('LOCALHOST', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD','');
define('DB_NAME','clothes-order');


$conn = mysqli_connect(LOCALHOST, DB_USERNAME,DB_PASSWORD) or die(mysqli_error()); // Database connection
$db_select = mysqli_select_db($conn,DB_NAME) or die(mysqli_error()); // Seclecting Database   

?>