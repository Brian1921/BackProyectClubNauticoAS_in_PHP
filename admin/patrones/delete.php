<?php
    include("../conexion.php");
    $link = conectar();

    $id=$_REQUEST['id'];

    $sql="UPDATE patrones SET id_estado_patron=2 where id_patron = '$id'";
    $sql1="UPDATE usuarios SET id_estado_usuario=2 where id_u='$id'";
    $res= mysqli_query($link, $sql);
    $res= mysqli_query($link, $sql1);

    mysqli_close($link);
?>