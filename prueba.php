<?php
session_start();
if (isset($productos)) {
    //Recorremos la variable de sesion
    /*Si la variable de sesion existe, se recorre con un bucle en busca de conincidencias con el id 
        del producto ($productos[0]) y la talla del producto($productos[1]) */
    for ($i = 0; $i < count($productos); $i++) {
        if ($id == $productos[$i][0] && $talla == $productos[$i][1]) {
            unset($productos[$i]);
            sort($productos);
        }
    }
}
