<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Content-Type: text/html; charset=utf-8");
$method = $_SERVER['REQUEST_METHOD'];
include "conectar.php";
$conn = conectarDB();
$conn->set_charset('utf8');
$JSONData = file_get_contents("php://input");
$dataObject = json_decode($JSONData);
if (!empty($dataObject->idOrden)){

	$idOrden= $dataObject->idOrden;
	$estado= 3;
	$conformidad = true;
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}

	$sql = " UPDATE ordentrabajo SET estado = '$estado', conformidad = '$conformidad' 
			WHERE idOrden = '$idOrden' ";

	if ($conn->query($sql) === TRUE) {
			
	  echo json_encode(array('actualizado'=>true, 'msg' => 'Orden cerrada con éxito!'));
	} else {
	  echo json_encode(array('actualizado'=>false, 'msg' => 'Error al cerrar la Orden, vuelva a intentar ', 'error'=> $conn->error));
	}

	$conn->close();
} 
 */
?>
