<?php require('adm.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Complementos/LOGOS/LOGO_PRETA.png">
    <title>ALLnimation - Cadastro de Animes</title>
</head>
<body class="cad_anime">
<?php include('php/navbar.php');?>
<?php
    @session_start();
    if(isset($_SESSION['msg'])){
        echo "<p class=alert>$_SESSION[msg]</p>";
        unset($_SESSION['msg']);
    }
?>
    <div class="anime">
        <form action="cad_anime.act.php" method="post" enctype="multipart/form-data">
            <p class="cad">Adicionar anime</p>
            <p><input type="text" name="nome" id="" placeholder="Nome"></p>
            <p><input type="text" name="genero" id="" placeholder="Genero"></p>
            <p><input type="date" name="estreia" id="" placeholder="Estréia"></p>
            <p><input type="number" name="episodios" id="" placeholder="Episódios"></p>
            <p><input type="text" name="diretor" id="" placeholder="Diretor"></p>
            <p><input type="text" name="estudio" id="" placeholder="Estúdio"></p>
            <p><input type="text" name="fetaria" id="" placeholder="Faixa etária"></p>
            <p><input type="text" name="sinopse" id="" placeholder="Sinopse"></p>
            <p class="cad" for="file">Capa</p>
            <p><input type="file" name="capa" id="file"></p>
            <input id="cadastrar" type="submit" value="Cadastrar">
        </form>
    </div>
</body>
</html>