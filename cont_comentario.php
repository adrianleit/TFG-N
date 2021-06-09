<?php
// Iniciamos las sesion
session_start();
if (isset($_POST['comentario']) && isset($_POST['operacion'])) {
    // Me traigo la variable comentario
    $comentario = $_POST["comentario"];

    // Cogo la variable de sesion del usuario
    if (isset($_SESSION["id_usuario"])) {
        $usuario = $_SESSION["id_usuario"];
    } else {
        $usuario = "";
    }

    // Create connection
    require("funcionConexion.php");
    $conn = conexion("s05bd7e4_streetwear");
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO usuario (nombre, id_usuario, email, clave, apellido, region, codigoPostal, telefono, 
    lineaDireccion1, pais) VALUES ('$nombre', '$id_usuario', '$email', '$clave', '$apellido', '$provincia', 
    $codigoPostal, $telefono, '$lineaDireccion1', '$pais');";
    if ($conn->query($sql) === TRUE) {
        echo "El usuario ha sido introducido en la base de datos";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else {
    echo "Faltan variables";
}
// $conn->close();
