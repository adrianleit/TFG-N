<?php
if($_POST['email'] == '' || $_POST['clave'] == ''){
    echo ('Usuario o contraseña en blanco');
} else{
    $email = $_POST['email'];
    $clave = $_POST['clave'];

    // Create connection
    require( "funcionConexion.php" );
    $conn = conexion( "streetwear" );
    // Check connection
    if ( $conn->connect_error ) {
        die( "Connection failed: " . $conn->connect_error );
    }

    $consulta = 'SELECT id, email, clave, nombre FROM usuario WHERE email="'.$email.'"';
    if ( $conn->query( $sql ) === TRUE ) {
        if(mysqli_num_rows($resultado)){ 
            $fila = mysqli_fetch_array($resultado,MYSQLI_ASSOC);
            $clavehasheada=$fila['hashpass'];
            $clave=$_POST['clave'];
            if(password_verify($clave, $clavehasheada)){ //solo puede haber una fila, 1 es true
                session_start();//quitar si lo ponemos en el menu
                $_SESSION["id"]=$fila['id'];
                $_SESSION["NombreCliente"]=$fila['nombre'];
                echo($_SESSION["NombreCliente"]);
                header('Location:index.php');
            }
            else{
                echo ('Contraseña incorrecta');
            }
        } else{    // si es cero no existe el usuario            
            echo('Usuario inexistente');  
        }
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
$conn->close();
