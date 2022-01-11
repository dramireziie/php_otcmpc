<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Content-Type: text/html; charset=utf-8");
$method = $_SERVER['REQUEST_METHOD'];
include "conectar.php";
$mysqli = conectarDB();
//sleep(1);	
$JSONData = file_get_contents("php://input");
$dataObject = json_decode($JSONData);    
session_start();    
$mysqli->set_charset('utf8');
	
$usuario = $dataObject-> usuario;
$pas =	$dataObject-> clave;
    
if ($nueva_consulta = $mysqli->prepare("SELECT 
		  * 
		  FROM usuario
		  WHERE correo = ?")) {
        $nueva_consulta->bind_param('s', $usuario);
        $nueva_consulta->execute();
        $resultado = $nueva_consulta->get_result();
        if ($resultado->num_rows == 1) {
            $datos = $resultado->fetch_assoc();
             $encriptado_db = $datos['clave'];
            if (password_verify($pas, $encriptado_db)){
				$token = bin2hex(random_bytes(64));
				echo json_encode(array('conectado'=>true,'usuario'=>$datos['correo'], 'nombre'=>$datos['nombre'],  'funcion'=>$datos['funcion'], 'token' => $token ) );
              }

            else {

                 echo json_encode(array('conectado'=>false, 'error' => 'La clave es incorrecta, vuelva a intentarlo.'));
                }
        }
        else {
              echo json_encode(array('conectado'=>false, 'error' => 'El usuario no existe.'));
        }
        $nueva_consulta->close();
      }
      else{
        echo json_encode(array('conectado'=>false, 'error' => 'No se pudo conectar a BD'));
      }
 // }
$mysqli->close();


?>
