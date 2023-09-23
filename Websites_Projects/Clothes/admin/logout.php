<?php
//include constants.php for SITEURL
include('../config/constants.php');
//1. destory the ssession 
session_destroy(); // unsets $_SESSION['user']

//2. Redirect to login page 
header('location:'.SITEURL.'admin/login.php');
?>