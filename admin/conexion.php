<?php
    function conectar()
    {
        $link = mysqli_connect('localhost', 'root', '') or die("ERROR al concetar la BD" . mysqli_error($link));

        mysqli_select_db($link, 'quizclub');
        
        return $link;
    }
?>