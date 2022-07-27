<?php

    include("../conexion.php");
    $link = conectar();

    $id=$_REQUEST['id'];

    $sql="UPDATE socios SET id_estado_socio=2 where id_socio='$id'";
    $sql1="UPDATE usuarios SET id_estado_usuario=2 where id_u='$id'";
    $res= mysqli_query($link, $sql);
    $res= mysqli_query($link, $sql1);

    mysqli_close($link);
?>