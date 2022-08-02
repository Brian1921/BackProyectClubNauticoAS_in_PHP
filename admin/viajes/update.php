<?php
    include("../conexion.php");
    $link = conectar();

    $id_viaje=$_REQUEST["id"];
    $fecha_salida=$_REQUEST["FS"];
    $fecha_llegada=$_REQUEST["FL"];
    $destino=$_REQUEST["Des"];
    $id_barco=$_REQUEST["id_ba"];
    $id_patron=$_REQUEST["id_pa"];

    $sql="UPDATE viajes SET fecha_salida='$fecha_salida', fecha_llegada='$fecha_llegada', destino='$destino', id_barco='$id_barco',
    id_patron='$id_patron' WHERE id_viaje='$id_viaje'";
    $res= mysqli_query($link, $sql);


?>