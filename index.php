<?php
require 'core.inc.php';
require 'connect.inc.php';
//session_destroy();
$_SESSION['ans'] = 'correct';
if(isset($_SESSION['user_id']) && !empty($_SESSION['user_id'])){
    header('location:logout.php');
}else{
include 'loginform.php';
}
?>