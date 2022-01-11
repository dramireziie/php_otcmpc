<?php
	include "conectar.php";
    $conn = conectarDB();
	$JSONData = file_get_contents("php://input");
	$dataObject = json_decode($JSONData);
	if (!empty($dataObject->fechaI)){
		//echo $dataObject->name;	
		$fechaInicio= $dataObject->fechaI;
		$fechaTermino= $dataObject->fechaT;
		$idOrden= $dataObject->idOrden;
		$observaciones= $dataObject->observaciones;
		$estado= 2;
		$idEjecutor= $dataObject->idEjecutor;	
		
		if ($conn->connect_error) {
		  die("Connection failed: " . $conn->connect_error);
		}

		$sql = " UPDATE ordentrabajo SET estado = '$estado', fechaInicio = '$fechaInicio',
				fechaTermino = '$fechaTermino', observaciones = '$observaciones', idEjecutor = '$idEjecutor' 
				WHERE idOrden = '$idOrden' ";

		if ($conn->query($sql) === TRUE) {
				
		  echo json_encode(array('actualizado'=>true, 'msg' => 'Orden guardada con éxito!'));
		} else {
		  echo json_encode(array('actualizado'=>false, 'msg' => 'Error al ingresar la Orden, vuelva a intentar ', 'error'=> $conn->error));
		}

		$conn->close();
	}
//fuente https://www.w3schools.com/php/php_mysql_insert.asp
?>
