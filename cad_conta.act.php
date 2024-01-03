<?php
    require('connect.php');
    extract($_FILES);
    extract($_POST);
    $senha = md5($senha);
    $sim = "sim";
    $nao = "nao";
    
    if($tipo_usuario==1){
        if(mysqli_query($con, "INSERT INTO `tab_contas` (`Codconta`, `Nome`, `Email`, `Senha`,`Adm`)
    VALUES (NULL, '$nome', '$email', '$senha','$nao')"))
    {
        $msg = "Conta criada com sucesso";
    }else{
        $msg = "Erro ao criar conta";
    }
    }
    
    else if($tipo_usuario==2){
        if(mysqli_query($con, "INSERT INTO `tab_contas` (`Codconta`, `Nome`, `Email`, `Senha`,`Adm`)
    VALUES (NULL, '$nome', '$email', '$senha','$sim')"))
    {
        $msg = "Bem vindo ao time!";
    }else{
        $msg = "Erro ao criar conta";
    }
    }


    session_start();
    $_SESSION['msg'] = $msg;

    header("location:login.php");
?>