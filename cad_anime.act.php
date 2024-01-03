<?php
    require('connect.php');
    extract($_FILES);
    extract($_POST);
    $nome = $_POST['nome'];
    $genero = $_POST['genero'];
    $estreia = $_POST['estreia'];
    $episodios = $_POST['episodios'];
    $diretor = $_POST['diretor'];
    $estudio = $_POST['estudio'];
    $fetaria = $_POST['fetaria'];
    $sinopse = $_POST['sinopse'];
    $endereco = "img/".md5(time()).".jpg";
    move_uploaded_file($capa['tmp_name'],$endereco);
    if(mysqli_query($con, "INSERT INTO `tab_animes` (`Codanime`, `Nome`, `Genero`, `Data`, `Episodios`, 
    `Diretor`, `Estudio`, `fEtaria`, `Sinopse`, `Capa`)
    VALUES (NULL, '$nome', '$genero', '$estreia', '$episodios', '$diretor', '$estudio', '$fetaria', 
    '$sinopse', '$endereco')"))
    {
        $msg = "Anime adicionado ao catálogo";
    }else{
        $msg = "Erro ao adicionar";
    }


    session_start();
    $_SESSION['msg'] = $msg;

    header("location:cad_anime.php");
?>