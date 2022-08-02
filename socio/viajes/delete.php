<?php
    include("../conexion.php");
    $link = conectar();

    $id=$_REQUEST['id'];

    $sql="UPDATE viajes SET id_estado_viaje=2 where id_viaje = '$id'";
    $res= mysqli_query($link, $sql);


    mysqli_close($link);
?>