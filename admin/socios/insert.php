<?php

    include("../conexion.php");
    $link = conectar();

    $id=$_REQUEST['id'];
    $nom=$_REQUEST['nom'];
    $ape=$_REQUEST['ape'];
    $tel=$_REQUEST['tel'];
    $em=$_REQUEST['em'];
    $pre=1;
    $res=$_REQUEST['res'];
    $us=$_REQUEST['us'];
    $pas=$_REQUEST['pas'];
    $r=2;


    $sql = "INSERT INTO socios values('$id','$nom','$ape','$tel','$em',1)";
    $sql1= "INSERT INTO usuarios values('$id','$us','$pas', $r,'$res',1,$pre)";
    $res = mysqli_query($link, $sql) or die("Error en la consulta $sql");
    $res1= mysqli_query($link, $sql1) or die("Error en la consulta $sql");


    mysqli_close($link);
?>