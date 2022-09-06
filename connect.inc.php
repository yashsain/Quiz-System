<?php
$servername = "localhost";
$mysql_username = "root";
$mysql_password = "";

$mysql_db = "quiz";

// Create connection
$conn = mysqli_connect($servername, $mysql_username, $mysql_password,$mysql_db);

// Check connection
if (!$conn) {
    die("Connection failed: " .  mysqli_connect_error());
} 

?>