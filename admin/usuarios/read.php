<?php

    include("../conexion.php");
    $link = conectar();


    $res_usuarios=[];
    $res_usuarios['Datos']=array();

    $sql="SELECT id_u, usuario, descrip_rol FROM usuarios AS u INNER JOIN roles AS r WHERE u.id_rol=r.id_rol";
    $res = mysqli_query($link, $sql);

    while($row = mysqli_fetch_array($res)){
        $index['id_u']=$row['id_u'];
        $index['usuario']=$row['usuario'];
        $index['descrip_rol']=$row['descrip_rol'];        
        array_push($res_usuarios['Datos'], $index);
    }
    echo json_encode($res_usuarios);
   

    mysqli_close($link);


?>