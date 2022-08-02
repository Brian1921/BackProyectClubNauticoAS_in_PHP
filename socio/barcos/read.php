<?php
    include("../conexion.php");
    $link = conectar();
    
    //recibe el id del socio que esta en sesión
    $id=$_REQUEST['id'];

    $res_barcos=[];
    $res_barcos['Datos']=array();

    $sql = "SELECT DISTINCT * FROM barco WHERE id_socio ='$id' AND id_estado_barco = 1;";
    $res = mysqli_query($link, $sql);

    while($row = mysqli_fetch_array($res)){
        $index['id_barco']=$row['id_barco'];
        $index['nom_barco']=$row['nom_barco'];
        $index['id_socio']=$row['id_socio'];
        $index['id_amarre']=$row['id_amarre'];
        array_push($res_barcos['Datos'], $index);
    }
    echo json_encode($res_barcos);

    mysqli_close($link);
?>