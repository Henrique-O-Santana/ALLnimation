<?php
    include('connect.php');
    $erro = false;
    session_start();

    if (!isset($_POST) || empty($_POST)) {
        $erro = "Você não preencheu o cadastro corretamente";
    }

    foreach ($_POST as $chave => $valor) {
        $$chave = trim(strip_tags($valor));

        if (empty($valor)) {
            $erro = "Existem campos em branco";
        }
    }

    if ((!isset($mensagem)) && !$erro) {
        $erro = "Digite uma mensagem";
    }

    if ((!isset($assunto)) && !$erro) {
        $erro = "Digite o assunto da mensagem";
    }

    if ((!isset($email) || !filter_var($email, FILTER_VALIDATE_EMAIL)) && !$erro) {
        $erro = "Envie um e-mail válido";
    }

    if ($erro) {
        echo $erro;
    }else{
        mysqli_query($con,"INSERT INTO `contato` (`id`, `nome`, `email`, `assunto`, `mensagem`)
         VALUES(NULL, '$nome', '$email', '$assunto', '$mensagem')");
         $_SESSION['msg'] = "Mensagem enviada com sucesso!";
         @session_start();
         header('location:contato.php');
    }

?>