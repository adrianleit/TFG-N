<?php
if (isset($_POST['email']) && isset($_POST['clave']) && isset($_POST['nombre']) && isset($_POST['apellido']) && isset($_POST['id_usuario']) && isset($_POST['telefono'])
    && isset($_POST['lineaDireccion1']) && isset($_POST['ciudad']) && isset($_POST['codigoPostal']) && isset($_POST['provincia'])) {
    $email = $_POST['email'];
    $clave = $_POST['clave'];
    
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $id_usuario = $_POST['id_usuario'];
    $telefono = $_POST['telefono'];
    
    $lineaDireccion1 = $_POST['lineaDireccion1'];
    $ciudad = $_POST['ciudad'];
    $codigoPostal = $_POST['codigoPostal'];
    $provincia = $_POST['provincia'];
    

    // Hacer un hash de la password
    $clave = password_hash($clave, PASSWORD_BCRYPT);
    // Create connection
    require("funcionConexion.php");
    $conn = conexion("streetwear");
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "INSERT INTO usuario (nombre, id_usuario, email, clave, apellido, region, codigoPostal, telefono, lineaDireccion1) VALUES ('$nombre', '$id_usuario', '$email', '$clave', '$apellido', '$provincia', $codigoPostal, $telefono, '$lineaDireccion1');";
    if ($conn->query($sql) === TRUE) {
        echo "El usuario ha sido introducido en la base de datos";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
} else{
    echo "Faltan variables";
}
// $conn->close();