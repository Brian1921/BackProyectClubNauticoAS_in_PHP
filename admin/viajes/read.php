<?php

    include("../conexion.php");
    $link = conectar();


    $res_viajes=[];
    $res_viajes['Datos']=array();

    $sql = "SELECT v.id_viaje, v.fecha_salida, v.fecha_llegada, v.destino, b.nom_barco, p.nom_patron, s.nom_socio, v.id_estado_viaje FROM viajes AS v
            INNER JOIN barco AS b ON v.id_barco = b.id_barco
            INNER JOIN patrones AS p ON v.id_patron= p.id_patron
            INNER JOIN socios AS s ON b.id_socio = s.id_socio
            ";
    $res = mysqli_query($link, $sql);
    
    while($row = mysqli_fetch_array($res)){
        $index['id_viaje']=$row['id_viaje'];
        $index['fecha_salida']=$row['fecha_salida'];
        $index['fecha_llegada']=$row['fecha_llegada'];
        $index['destino']=$row['destino'];
        $index['nom_barco']=$row['nom_barco'];
        $index['nom_patron']=$row['nom_patron'];
        $index['nom_socio']=$row['nom_socio'];
        $index['id_estado_viaje']=$row['id_estado_viaje'];
        array_push($res_viajes['Datos'], $index);
    }
    echo json_encode($res_viajes);
   

    mysqli_close($link);

    

?>