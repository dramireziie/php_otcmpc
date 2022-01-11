<?php
	include "conectar.php";
    $conn = conectarDB();
	$JSONData = file_get_contents("php://input");
	$dataObject = json_decode($JSONData);
	if (!empty($dataObject->fechaI)){
		//echo $dataObject->name;	
		$fechaInicio= $dataObject->fechaI;
		$fechaTermino= $dataObject->fechaT;
		$idServicio= $dataObject->servicio;
		$descripcion = "Trabajo realizado según planificación";
		$$observaciones= $dataObject->observaciones;
		$estado= 2;
		$idEjecutor= $dataObject->idEjecutor;	
		$conformidad=false;

		if ($conn->connect_error) {
		  die("Connection failed: " . $conn->connect_error);
		}

		$sql = "INSERT INTO ordentrabajo (fechaInicio, fechaTermino, idServicio, descripcion, observaciones, estado, idEjecutor,conformidad) 
				VALUES ('$fechaInicio','$fechaTermino', '$idServicio', $descripcion, '$observaciones', '$estado', '$idEjecutor', '$conformidad' )";

		if ($conn->query($sql) === TRUE) {
				
		  echo json_encode(array('guardado'=>true, 'msg' => 'Nuevo trabajo registradp con éxito','orden'=>$conn->insert_id));
		} else {
		  echo json_encode(array('guardado'=>false, 'msg' => 'Error al ingresar el trabajo, vuelva a intentar ', 'error'=> $conn->error));
		}

		$conn->close();
	}
//fuente https://www.w3schools.com/php/php_mysql_insert.asp
?>
