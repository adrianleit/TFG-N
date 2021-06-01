<?php
//Se inicia la sesion
session_start();
if(!isset($_POST['cantidad'])){
    echo("Falta la cantidad");
}
if(!isset($_POST['id'])){
    echo("Falta el id");
}
if(!isset($_POST['size'])){
    echo("Falta la talla");
}
if(!isset($_POST['precio'])){
    echo("Falta el precio");
}

// Sacar los valores del producto que vamos a añadir en la base de datos
if (isset($_POST['cantidad']) && isset($_POST['id']) && isset($_POST['size']) && isset($_POST['precio'])) {
    $cantidad = intval($_POST['cantidad']);
    $id = $_POST['id'];
    $talla = $_POST['size'];
    $precio = $_POST['precio'];

    //Si no existe la variable de sesion carrito la creamos y le metemos el producto
    if (isset($_SESSION['carrito'])) {
         // Comprobar si esta ya el elemento el carrito
         for ($i = 0; $i > count($_SESSION['carrito']); $i++) {
            if ($_SESSION['carrito'][0] == $id && $_SESSION['carrito'][3] == $talla) {
                $_SESSION['carrito'][1] = intval($_SESSION['carrito'][1]) + intval($cantidad);
                echo ('Coincide');
            } else {
                array_push($_SESSION['carrito'], array($id, $cantidad, $precio, $talla));
                echo ('Lo mete pero no coincide');
            }
        }
    } else {
        $_SESSION['carrito'] = [];
        array_push($_SESSION['carrito'], array($id, $cantidad, $precio, $talla));
        echo ('Crea el carrito');
        //header('Location: shop-single-product.php');
    }
} else{
    echo("Faltan variables");
}
?>