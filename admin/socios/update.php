<?php
    include("../conexion.php");
    $link = conectar();
    
    $id=$_REQUEST['id'];
    $nom=$_REQUEST['nom'];
    $ape=$_REQUEST['ape'];
    $tel=$_REQUEST['tel'];
    $em=$_REQUEST['em'];


    $sql = "UPDATE socios SET nom_socio ='$nom', ape_socio='$ape', tel_socio='$tel', em_socio='$em' WHERE id_socio = $id";
    $res = mysqli_query($link, $sql) or die("Error en la consulta $sql");

    if($res){
        echo "datos actualizados";
    }else{
        echo "error en actualizar";
    }

    mysqli_close($link);
?>