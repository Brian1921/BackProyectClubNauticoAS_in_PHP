<?php
    include("../conexion.php");
    $link = conectar();

    $id=$_REQUEST['id'];

    $sql="UPDATE barco SET id_estado_barco=2 where id_barco='$id'";
    $res= mysqli_query($link, $sql);

    mysqli_close($link);
?>