<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="Complementos/LOGOS/LOGO_PRETA.png">
</head>
<body>
    
</body>
</html>
<?php
    @session_start();
?>
<div class="navbar">
    <ul class="links">
        <a href="listar.php"><li>Listar</li></a>
        <a href="cad_anime.php"><li>Adicionar</li></a>
        <?php
            if(isset($_SESSION['login']) && $_SESSION['login'] == true){
                echo "<a href=logoff.php><li>Sair</li></a>";
                echo "<li>Olá $_SESSION[nome]</li>";
            }else{
                echo "<a href=login.php><li>Entrar</li></a>";
            }
        ?>
    </ul>
</div>