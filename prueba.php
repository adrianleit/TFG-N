<?php
session_start();

if (isset($_SESSION['carrito'])) {
    //Recorremos la variable de sesion
    /*Si la variable de sesion existe, se recorre con un bucle en busca de conincidencias con el id 
        del producto ($SESSION['carrito'][0]) y la talla del producto($SESSION['carrito'][1]) */
        echo(count($_SESSION['carrito']));
}
