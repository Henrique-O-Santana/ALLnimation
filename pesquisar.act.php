<?php
$texto = $_GET['texto'];

require('connect.php');

$animes = mysqli_query($con, "Select * from `tab_animes` where `Nome` like '%$texto%'");
    while($anime = mysqli_fetch_array($animes)){
        echo "<div class=lista>";
        echo "<a href=template.php?cod=$anime[Codanime]><img src=$anime[Capa]></a>";
        echo "<div class=pesq>";
        echo "<h1>$anime[Nome]</h1>";
        echo "</div>";
        echo "</div>";
    }
?>