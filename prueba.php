<?php
$marca = "casablanca";
$parte = "camisa";
if ($conexion = mysqli_connect('localhost', 'root', '', 's05bd7e4_streetwear')) {
    mysqli_set_charset($conexion, 'utf8');
    $consulta = "SELECT * FROM productos WHERE marca='casablanca' AND parte='camisetas';";
    mysqli_query($conexion, $consulta);
    if ($resultado = mysqli_query($conexion, $consulta)) {
        /* 
        [0] => Marca
        [1] => Nombre
        [2] => Precio
        [3] => Id
        [4] => Parte
        [5] => Comentario
        [6] => Sexo
        */
        $fila=mysqli_fetch_row($resultado);
        echo ("Hola");
        echo ("<pre>");
        print_r($fila);
        echo ("</pre>");
        mysqli_close($conexion);
    }
}
