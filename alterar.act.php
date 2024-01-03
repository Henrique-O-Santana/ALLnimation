<?php
require('connect.php');
extract($_FILES);
extract($_POST);
if($capa['size'] > 0){
    if($capa_anterior == ""){
        $endereco = "img/".md5(time()).".jpg";
    }else{
        $endereco = $capa_anterior;
    }
    move_uploaded_file($capa['tmp_name'],$endereco);
}else{
    $endereco = $capa_anterior;
}
if(mysqli_query($con, "UPDATE `tab_animes` SET
`Nome` = '$nome',
`Genero` = '$genero',
`Data` = '$estreia',
`Episodios` = '$episodios',
`Diretor` = '$diretor',
`Estudio` = '$estudio',
`fEtaria` = '$fetaria',
`Sinopse` = '$sinopse',
`Capa` = '$endereco' WHERE `tab_animes`.`Codanime` = '$codigo';")){
    $msg = "Alteração feita com sucesso";
}else{
    $msg = "Erro ao alterar";
}
@session_start();
$_SESSION['msg'] = $msg;
header("location:listar.php");
?>