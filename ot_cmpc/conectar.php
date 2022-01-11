<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Content-Type: text/html; charset=utf-8");
require_once('connect.php');
$method = $_SERVER['REQUEST_METHOD'];

function conectarDB(){

  $servidor = "127.0.0.1:1234";
  $usuario = "root";
  $password = "031203";
  $bd = "ot_cmpc";
  //$bd = "cajaherr_datos";
  

 	$conexion = mysqli_connect($servidor, $usuario, $password,$bd);

        if($conexion){
            echo "conectado";
        }else{
            echo 'Ha sucedido un error inexperado en la conexion de la base de datos';
        }

      
	
/* 	$myConecction = new MySQLDB($servidor, $usuario, $password,$bd);
	$conexion = $myConecction->connect();
	 */
	return $conexion;
}
?>
