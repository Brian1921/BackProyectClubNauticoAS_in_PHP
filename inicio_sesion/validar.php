<?php
    include("../conexion.php");

    $link = conectar();
    $user=$_REQUEST['user'];
    $pass=$_REQUEST['pass'];
    $rol=$_REQUEST['rol'];
    /*
    PRUEBA CON ARCHIVO JSON
    $user='admin';
    $pass='admin1234';
    $rol='ADMINISTRADOR';*/

    $sql = "select usuario, password, descrip_rol, u.id_estado_usuario from usuarios u, roles r where (u.usuario='$user' and u.password='$pass') and (u.id_rol=r.id_rol and r.descrip_rol='$rol');";
    $result = mysqli_query($link, $sql);

    if($row = mysqli_fetch_array($result)){
        echo json_encode($row, JSON_UNESCAPED_UNICODE);
    }

    mysqli_close($link);
?>