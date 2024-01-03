<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="Complementos/LOGOS/LOGO_PRETA.png">
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="crossorigin="anonymous"></script>
    <script>
        function pesquisar(texto){
            $.ajax({
                type: "post",
                url: "pesquisar.act.php?texto="+texto,
                data: "texto",
                success: function (response) {
                    $('#result').html(response);
                }
            });
        }
    </script>
    <title>Pesquisar</title>
</head>
<body id="fundopesquisar">
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
    <div class="pesquisar">
        <div class="pesq">
            <input type="search" name="pesquisa" id="txtpesquisar" onkeyup="pesquisar(this.value)">
            <div id="result"></div>
        </div>
    </div>
</body>
</html>