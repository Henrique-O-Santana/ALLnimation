<?php
    echo $codigo = $_GET['cod'];
    require('connect.php');
    $busca = mysqli_query($con, "Select * from `tab_animes` where `Codanime` = '$codigo'");
    $anime = mysqli_fetch_array($busca);
    unset($anime['Capa']);
    if(mysqli_query($con, "Delete from `tab_animes` where `Codanime` = '$codigo'"))
{
    $msg = "Anime excluído do catálogo";
}else{
    $msg = "Erro ao excluir anime, tente novamente";
}
@session_start();
$_SESSION['msg'] = $msg;
header("location:listar.php");
?>