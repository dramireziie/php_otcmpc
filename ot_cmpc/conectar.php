<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Content-Type: text/html; charset=utf-8");
require_once('connect.php');
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$method = $_SERVER['REQUEST_METHOD'];
function conectarDB(){
	$servidor = "localhost";
	$usuario = "root";
	$password = "Dario031203";
	$bd = "ot_cmpc";
	//$conexion = new mysqli($servidor, $usuario, $password,$bd);
	$conexion = mysqli_connect($servidor, $usuario, $password,$bd);
	if($conexion)
		echo "conectado";
	else
		echo 'Ha sucedido un error inexperado en la conexion de la base de datos';
	return $conexion;
}
?>
