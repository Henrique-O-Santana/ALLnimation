<?php
    session_start();
    if(!isset($_SESSION['login']) || $_SESSION['login'] == false || $_SESSION['Adm'] == false){
        header("location:login.php");
    }
?>