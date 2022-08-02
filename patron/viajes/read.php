<?php
    include("../conexion.php");
    $link = conectar();

    //recibe  el id del patron presente
    $id_patron=$_REQUEST['id'];

    $res_viajes=[];
    $res_viajes['Datos']=array();

    $sql = "SELECT DISTINCT v.id_viaje, v.fecha_salida, v.fecha_llegada, v.destino, b.nom_barco, s.nom_socio FROM viajes AS v
            INNER JOIN patrones AS p ON p.id_patron='$id_patron'
            INNER JOIN barco AS b ON v.id_barco=b.id_barco
            INNER JOIN socios AS s ON s.id_socio=b.id_socio
            AND p.id_patron= v.id_patron";
    $res = mysqli_query($link, $sql);
    
    while($row = mysqli_fetch_array($res)){
        $index['id_viaje']=$row['id_viaje'];
        $index['fecha_salida']=$row['fecha_salida'];
        $index['fecha_llegada']=$row['fecha_llegada'];
        $index['destino']=$row['destino'];
        $index['nom_barco']=$row['nom_barco'];
        $index['nom_socio']=$row['nom_socio'];
        array_push($res_viajes['Datos'], $index);
    }
    echo json_encode($res_viajes);
   

    mysqli_close($link);

    

?>