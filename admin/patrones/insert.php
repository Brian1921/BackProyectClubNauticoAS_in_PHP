<?php
    include("../conexion.php");
    $link = conectar();


    $id=$_REQUEST['id'];
    $nom=$_REQUEST['nom'];
    $ape=$_REQUEST['ape'];
    $tel=$_REQUEST['tel'];
    $em=$_REQUEST['em'];
    $pregunta=1;
    $res=$_REQUEST['res'];
    $us=$_REQUEST['us'];
    $pas=$_REQUEST['pas'];
    $r=2;

    $sql = "INSERT INTO patrones values('$id','$nom','$ape','$tel','$em',1)";
    $sql1 = "INSERT INTO usuarios values('$id','$us','$pas', $r,'$res',1,$pregunta)";
    $res = mysqli_query($link, $sql) or die("Error en la consulta $sql");
    $res1 = mysqli_query($link, $sql1) or die("Error en la consulta $sql1");

    mysqli_close($link);
?>