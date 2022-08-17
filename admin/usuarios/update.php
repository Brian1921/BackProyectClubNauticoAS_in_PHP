<?php
    include("../conexion.php");
    $link = conectar();

    $id_u=$_REQUEST['id'];
    $usuario=$_REQUEST['usuario'];

    $sql="UPDATE usuarios SET usuario='$usuario' WHERE id_u='$id_u'";
    $res= mysqli_query($link, $sql);

    if($res){
        echo "datos actualizados";
    }else{
        echo "error en actualizar";
    }

    
    mysqli_close($link);
?>