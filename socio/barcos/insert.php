<?php
    include("../conexion.php");
    $link = conectar();


    $id_barco=$_REQUEST['id'];
    $nom_barco=$_REQUEST['nom'];
    $id_socio="1234";
    $id_amarre=$_REQUEST['id_ama'];


    $sql="INSERT INTO barco (id_barco,nom_barco,id_socio,id_amarre,id_estado_barco) VALUES('$id_barco','$nom_barco','$id_socio','$id_amarre', 1)";
    $res= mysqli_query($link, $sql);
    mysqli_close($link);
?>