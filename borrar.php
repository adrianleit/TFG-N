<?php
    session_start();
    unset($_SESSION["NombreCliente"]);
    /* Redirigir */
    header('Location:index.php');

?>