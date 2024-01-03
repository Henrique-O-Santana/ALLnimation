<?php require('sec.php');?>
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
<?php
    @session_start();
    if(isset($_SESSION['msg'])){
        echo "<p class=alert>$_SESSION[msg]</p>";
        unset($_SESSION['msg']);
    }
?>
<?php
    $codigo = $_GET['cod'];
    require('connect.php');
    $busca = mysqli_query($con, "Select * from `tab_animes` where `Codanime` = '$codigo'");
    $anime = mysqli_fetch_array($busca);
?>
<?php include('php/navbar.php');?>
    <div class="anime">
        <form action="alterar.act.php" method="post" enctype="multipart/form-data">
            <input type="hidden" name="codigo" value="<?php echo $anime['Codanime'];?>">
            <input type="hidden" name="capa_anterior" value="<?php echo $anime['Capa'];?>">
            <p>Nome</p>
            <p><input type="text" name="nome" id="" value="<?php echo $anime['Nome'];?>"></p>
            <p>Gênero</p>
            <p><input type="text" name="genero" id="" value="<?php echo $anime['Genero'];?>"></p>
            <p>Estréia</p>
            <p><input type="date" name="estreia" id="" value="<?php echo $anime['Data'];?>"></p>
            <p>Episódios</p>
            <p><input type="number" name="episodios" id="" value="<?php echo $anime['Episodios'];?>"></p>
            <p>Diretor</p>
            <p><input type="text" name="diretor" id="" value="<?php echo $anime['Diretor'];?>"></p>
            <p>Estúdio</p>
            <p><input type="text" name="estudio" id="" value="<?php echo $anime['Estudio'];?>"></p>
            <p>Faixa etária</p>
            <p><input type="text" name="fetaria" id="" value="<?php echo $anime['fEtaria'];?>"></p>
            <p>Sinopse</p>
            <p><input type="text" name="sinopse" id="" value="<?php echo $anime['Sinopse'];?>"></p>
            <p>Capa</p>
            <p><input type="file" name="capa" id=""></p>
            <input id="cadastrar" type="submit" value="Alterar">
        </form>
    </div>

</body>
</html>