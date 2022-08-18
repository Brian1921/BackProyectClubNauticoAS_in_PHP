<?php
    include("../conexion.php");
    $link = conectar();

    //recibe tambien el id del socio presente
    $id_socio=$_REQUEST['id'];

    $res_viajes=[];
    $res_viajes['Datos']=array();

    $sql = "SELECT DISTINCT v.id_viaje, v.fecha_salida, v.fecha_llegada, v.destino, b.nom_barco, p.nom_patron, v.id_estado_viaje FROM viajes AS v
            INNER JOIN socios AS s ON s.id_socio='$id_socio'
            INNER JOIN barco AS b ON s.id_socio=b.id_socio
            AND b.id_barco=v.id_barco
            INNER JOIN patrones AS p ON v.id_patron=p.id_patron";
            $res = mysqli_query($link, $sql);
    $res = mysqli_query($link, $sql);
    
    while($row = mysqli_fetch_array($res)){
        $index['id_viaje']=$row['id_viaje'];
        $index['fecha_salida']=$row['fecha_salida'];
        $index['fecha_llegada']=$row['fecha_llegada'];
        $index['destino']=$row['destino'];
        $index['nom_barco']=$row['nom_barco'];
        $index['nom_patron']=$row['nom_patron'];
        array_push($res_viajes['Datos'], $index);
    }
    echo json_encode($res_viajes);
   

    mysqli_close($link);

    

?>