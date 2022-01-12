<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Allow: GET, POST, OPTIONS, PUT, DELETE");
$method = $_SERVER['REQUEST_METHOD'];
if($method == "OPTIONS") {
    die();
}

$output = json_encode(['status' => 'recieved']);
header('Content-Length: '.strlen($output));
header('Content-Type: application/json');
echo $output;
exit;
/* 	include "conectar.php";
    $conn = conectarDB();
	//$JSONData = file_get_contents("php://input");
	//$dataObject = json_decode($JSONData);
	echo "nada"; */
/* 	if (!empty($dataObject->idOrden)){

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
	} */

?>
