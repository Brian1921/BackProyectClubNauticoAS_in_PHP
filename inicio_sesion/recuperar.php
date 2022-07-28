<?php
    include("./conexion.php");
    $link = conectar();

    $id=$_REQUEST['id'];
    $pass=$_REQUEST['pass'];
    $pre=1;
    $res=$_REQUEST['res'];
/*
    $id=8874;
    $pass="castigo";
    $pre=1;
    $res="Feid";*/

    $sql="SELECT id_u, respuesta, pregunta from usuarios u, preguntas p where (u.id_u='$id') and (u.id_pregunta=p.id_pregunta and p.id_pregunta='$pre');";
    $resu=mysqli_query($link,$sql);

    echo json_encode($resu);

    if($row=mysqli_fetch_array($resu)){
        $sql1="UPDATE usuarios SET password='$pass' WHERE id_u='$id'";
        $resulta= mysqli_query($link, $sql1);
        echo "Recuperacion compleatda";
    }else{
        echo "Error en los datos";
    }

    mysqli_close($link);
?>