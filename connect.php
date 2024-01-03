<?php
    if(!$con = mysqli_connect('localhost','root','','animes')){
        echo "Não existe essa base de dados";
    }
    mysqli_query($con,"SET NAMES utf8");
?>