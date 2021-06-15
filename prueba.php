<?php
session_start();

if (isset($_SESSION['carrito'])) {
    echo("<pre>");
    for ($i=0; $i < count($_SESSION['carrito']); $i++) { 
        print_r($_SESSION['carrito'][$i]);
    }
    
    echo("</pre>");
}else {
    echo("No existe");
}
