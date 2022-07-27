<?php
    include("../conexion.php");
    $link = conectar();
    
    $id=$_REQUEST['id'];
    $nom=$_REQUEST['nom'];
    $ape=$_REQUEST['ape'];
    $tel=$_REQUEST['tel'];
    $em=$_REQUEST['em'];

    $sql = "UPDATE patrones SET nom_patron ='$nom', ape_patron='$ape', tel_patron='$tel', em_patron='$em' WHERE id_patron = $id";
    $res = mysqli_query($link, $sql) or die("Error en la consulta");

    if($res){
        echo "datos actualizados";
    }else{
        echo "error en actualizar";
    }

    mysqli_close($link);

?>