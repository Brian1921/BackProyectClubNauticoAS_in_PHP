<?php
    include("../conexion.php");
    $link = conectar();

    $id_viaje=$_REQUEST['id_viaje'];
    $fecha_salida=$_REQUEST['fecha_salida'];
    $fecha_llegada=$_REQUEST['fecha_llegada'];
    $destino=$_REQUEST['destino'];
    $id_barco=$_REQUEST['id_barco'];
    $id_patron=$_REQUEST['id_patron'];

    $sql = "INSERT INTO viajes VALUES ('$id_viaje', '$fecha_salida', '$fecha_llegada', '$destino', '$id_barco', '$id_patron', 1)";
    $res=mysqli_query($link, $sql);

    mysqli_close($link);
?>