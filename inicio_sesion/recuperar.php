<?php
    include("../conexion.php");
    $link = conectar();

    $id=$_REQUEST['id'];
    $pass=$_REQUEST['pass'];
    $pre=1;
    $res=$_REQUEST['res'];

    $sql="SELECT id_u, respuesta, pregunta from usuarios u, preguntas p where (u.id_u='$id' and u.respuesta='$res') and (u.id_pregunta=p.id_pregunta and p.pregunta='$pre');";
    $resu=mysqli_query($link,$sql);

    if($row=mysqli_fetch_array($resu)){
        $sql1="UPDATE usuarios SET password='$pass' WHERE id_u='$id'";
        $resulta= mysqli_query($link, $sql1);
        echo "Recuperacion compleatda";
    }else{
        echo "Error en los datos";
    }

    mysqli_close($link);
?>