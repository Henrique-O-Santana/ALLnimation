<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<?php
    @session_start();
?>
    <header>
        <div class="navbar">
        <nav>
            <a href="index.php"><img class="logonav" src="Complementos/LOGOS/LOGO_BRANCA_DEITADA" alt="Erro na Logo"></a>
            <ul class="links">              
                <?php
                echo "<li><a href=pesquisar.php>BUSCAR</a></li> ";
                    if(isset($_SESSION['login']) && $_SESSION['login'] == true){
                        echo "<div class=lol>";
                        if($_SESSION['Adm'] == true){
                            echo "<li><a href=cad_anime.php>CADASTRAR</a></li>";
                            echo "<li><a href=listar.php>LISTA</a></li>";
                        }
                        echo "<a href=logoff.php><li>SAIR</li></a>";
                        echo "<a><li id=nomelogin>$_SESSION[nome]</li><a/>";
                        echo "</div>";
                    }else{
                        echo "<a href=login.php><li>ENTRAR</li></a>";
                    }
                ?>
            </ul>
        </nav>
        </div>
    </header>
    
</body>
</html>