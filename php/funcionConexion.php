<?php
    function conexion($bbdd){
        $serv="localhost";
        $usuario="root";
        $clave="";
        $conn=mysqli_connect($serv,$usuario,$clave,$bbdd);
        if(mysqli_connect_errno()){
            printf("Conexion fallida: %s\n", mysqli_connect_errno());
            exit();
        }
        return $conn;
    }
    
?>
