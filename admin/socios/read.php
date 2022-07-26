<?php
    include("../conexion.php");
    $link = conectar();

    //creamos una variable para guardar los datos
    $res_socios=[];
    $res_socios['Datos']=array();

    //seleccionamos los datos de la bd
    $sql = "select * from socios";
    $res = mysqli_query($link, $sql);


    while ($row = mysqli_fetch_array($res)) {
        $index['id_socio']=$row['id_socio'];
        $index['nom_socio']=$row['nom_socio'];
        $index['ape_socio']=$row['ape_socio'];
        $index['tel_socio']=$row['tel_socio'];
        $index['em_socio']=$row['em_socio'];
        $index['id_estado_socio']=$row['id_estado_socio'];
        array_push($res_socios['Datos'], $index);
    }
    echo json_encode($res_socios);


    mysqli_close($link);

?>