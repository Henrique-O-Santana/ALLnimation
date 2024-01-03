<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Complementos/LOGOS/LOGO_PRETA.png">
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="crossorigin="anonymous"></script>
    <title>Allnimation - Criar conta</title>
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
        <form action="cad_conta.act.php" method="post">
            <p class="cad">Cadastrar</p>
            <p><input type="text" name="nome" id="" placeholder="Nome"></p>
            <p><input type="email" name="email" id="" placeholder="E-mail"></p>
            <p><input type="password" name="senha" id="" placeholder="Senha"></p>
            <p>Tipo de usuário</p>
            <select name="tipo_usuario">
                <option value="">Selecione</option>
                <option value="1">Usuario Comum</option>
                <option value="2">Administrador</option>
            </select><br />
            <input id="cadastrar" type="submit" value="Cadastrar">
        </form>
    </div>
</body>
</html>