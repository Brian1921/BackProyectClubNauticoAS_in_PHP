<?php
    include("../conexion.php");
    $link = conectar();
    
    $id_barco=$_REQUEST['id'];
    $nom_barco=$_REQUEST['nom'];
    $id_socio=$_REQUEST['id_so'];
    $id_amarre=$_REQUEST['id_ama'];

    $sql="UPDATE barco SET nom_barco='$nom_barco', id_socio='$id_socio',id_amarre='$id_amarre' WHERE id_barco='$id_barco'";
    $res= mysqli_query($link, $sql);

    if($res){
        echo "datos actualizados";
    }else{
        echo "error en actualizar";
    }

    
    mysqli_close($link);

?>