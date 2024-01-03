<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Complementos/LOGOS/LOGO_PRETA.png">
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="crossorigin="anonymous"></script>
    <title>Allnimation - Login</title>
</head>
<body class="login">
<?php
    include('php/navbar.php')
?>
<?php
    @session_start();
    if(isset($_SESSION['msg'])){
        echo "<p class=alert>$_SESSION[msg]</p>";
        unset($_SESSION['msg']);
    }
?>
    <div class="anime">
        <form action="login.act.php" method="post" enctype="multipart/form-data">
            <p class="cad">Login</p>
            <p><input type="text" name="nome" id="" placeholder="Nome"></p>
            <p><input type="email" name="email" id="" placeholder="E-mail"></p>
            <p><input type="password" name="senha" id="btn" placeholder="Senha"></p>
            <input id="cadastrar" type="submit" value="Entrar">
            <p><a href="cad_conta.php">Não tem uma conta?</a></p>
        </form>
    </div>
</body>
</html>