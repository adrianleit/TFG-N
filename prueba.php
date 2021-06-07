<?php
$id="p4";
$talla="m";
$productos=array(array("p1","m"), array("p2","s"), array("p3","xs"), array("p4","m"), array("p5","l"), array("p6","y"));
echo("<pre>");
    print_r($productos);
echo("</pre>");
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

echo("<pre>");
    print_r($productos);
echo("</pre>");