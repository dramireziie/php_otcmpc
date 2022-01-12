<?php
	include "conectar.php";
    $conn = conectarDB();
	$JSONData = file_get_contents("php://input");
	$dataObject = json_decode($JSONData);
	if (!empty($dataObject->fecha)){
		echo $dataObject->name;	
		$fechaSolicitud= $dataObject->fecha;
		$idServicio= $dataObject->servicio;
		$descripcion= $dataObject->observaciones;
		$estado= 1;
		$idSolicitante= $dataObject->idSolicitante;	
		$conformidad=false;

		if ($conn->connect_error) {
		  die("Connection failed: " . $conn->connect_error);
		}

		$sql = "INSERT INTO ordentrabajo (fechaSolicitud, idServicio, descripcion, estado, idSolicitante,conformidad) 
				VALUES ('$fechaSolicitud', '$idServicio', '$descripcion', '$estado', '$idSolicitante', '$conformidad' )";

		if ($conn->query($sql) === TRUE) {
				
		  echo json_encode(array('guardado'=>true, 'msg' => 'Nueva solicitud registrada con éxito','orden'=>$conn->insert_id));
		} else {
		  echo json_encode(array('guardado'=>false, 'msg' => 'Error al ingresar la Orden, vuelva a intentar ', 'error'=> $conn->error));
		}

		$conn->close();
	}
//fuente https://www.w3schools.com/php/php_mysql_insert.asp
?>
