<?php
    include("../conexion.php");
    $link = conectar();

    $res_patrones=[];
    $res_patrones['Datos']=array();

    $sql = "select * from patrones";
    $res = mysqli_query($link, $sql);

    while($row = mysqli_fetch_array($res)){
        $index['id_patron']=$row['id_patron'];
        $index['nom_patron']=$row['nom_patron'];
        $index['ape_patron']=$row['ape_patron'];
        $index['tel_patron']=$row['tel_patron'];
        $index['em_patron']=$row['em_patron'];
        $index['id_estado_patron']=$row['id_estado_patron'];
        array_push($res_patrones['Datos'], $index);
    }
    //echo json_encode($res_patrones);

    mysqli_close($link);
?>