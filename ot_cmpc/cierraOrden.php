<?php
header('Access-Control-Allow-Origin: *');
$method = $_SERVER['REQUEST_METHOD'];
$output = json_encode(['status' => 'recieved']);
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
