<?php
    include("../conexion.php");
    $link = conectar();

    $res_barcos=[];
    $res_barcos['Datos']=array();

    $sql = "SELECT  b.id_barco, b.nom_barco, b.id_amarre, s.nom_socio, s.ape_socio, b.id_estado_barco FROM barco AS b 
            INNER JOIN socios AS s ON b.id_socio=s.id_socio;
            ";
    $res = mysqli_query($link, $sql);

    while($row = mysqli_fetch_array($res)){
        $index['id_barco']=$row['id_barco'];
        $index['nom_barco']=$row['nom_barco'];
        $index['id_amarre']=$row['id_amarre'];
        $index['nom_socio']=$row['nom_socio'];
        $index['ape_socio']=$row['ape_socio'];
        $index['id_estado_barco']=$row['id_estado_barco'];
        array_push($res_barcos['Datos'], $index);
    }
    echo json_encode($res_barcos);

    mysqli_close($link);
?>