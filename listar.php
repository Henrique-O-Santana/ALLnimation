<?php require('adm.php');?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="Complementos/LOGOS/LOGO_PRETA.png">
    <title>Listar</title>
</head>
<body class="listar">
    <?php
    @session_start();
    if(isset($_SESSION['msg'])){
        echo "<p class=alert>$_SESSION[msg]</p>";
        unset($_SESSION['msg']);
    }
    include('php/navbar.php');
    require('connect.php');

    $animes = mysqli_query($con, "Select * from `tab_animes`");
    while($anime = mysqli_fetch_array($animes)){
        echo "<div class=lista>";
        echo "<a href=template.php?cod=$anime[Codanime]><img src=$anime[Capa]></a>";
        echo "<div class=lista_desc>";
        echo "</div>";
        echo "</div>";
    }
    ?>
</body>
</html>