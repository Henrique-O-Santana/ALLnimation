<?php
extract($_POST);
$senha = md5($senha);

require('connect.php');

$busca = mysqli_query($con, "Select * from `tab_contas` where `Email` = '$email'");
session_start();

if($busca->num_rows == 1){
    $conta = mysqli_fetch_array($busca);
    if($senha === $conta['Senha']){
        if($conta['Adm'] == "nao"){
            echo "E-mail e senha corretos";
            $_SESSION['Adm'] = false;
            $_SESSION['login'] = true;
            $_SESSION['nome'] = $conta['Nome'];
            $target = "location:index.php";
        }else if($conta['Adm'] == "sim"){
            echo "E-mail e senha corretos, adm";
            $_SESSION['Adm'] = true;
            $_SESSION['login'] = true;
            $_SESSION['nome'] = $conta['Nome'];
            $target = "location:listar.php";
        }
    }else{
        echo "E-mail ou senha incorretos";
        $target = "location:login.php";
    }
}else{
    echo "E-mail ou senha incorretos";
    $target = "location:login.php";
}
@session_start();
$_SESSION['msg'] = $msg;
header($target);
?>