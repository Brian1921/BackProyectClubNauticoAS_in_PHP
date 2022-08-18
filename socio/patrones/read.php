<?php
    include("../conexion.php");
    $link = conectar();

    $res_patrones=[];
    $res_patrones['Datos']=array();

    $id_socio="1234";

    $sql = "SELECT DISTINCT p.id_patron, p.nom_patron, p.ape_patron, p.tel_patron, p.em_patron FROM patrones AS p
            INNER JOIN socios AS s ON s.id_socio='$id_socio'
            INNER JOIN barco AS b ON s.id_socio=b.id_socio
            INNER JOIN viajes AS v ON b.id_barco=v.id_barco
            AND v.id_patron=p.id_patron;";
    $res = mysqli_query($link, $sql);

    while($row = mysqli_fetch_array($res)){
        if($id_socio==$row['id_patron']){

        }else{
            $index['id_patron']=$row['id_patron'];
            $index['nom_patron']=$row['nom_patron'];
            $index['ape_patron']=$row['ape_patron'];
            $index['tel_patron']=$row['tel_patron'];
            $index['em_patron']=$row['em_patron'];

        array_push($res_patrones['Datos'], $index);
        }
        
    }
    echo json_encode($res_patrones);

    mysqli_close($link);
?>