<?php
	include "conectar.php";
    $conn = conectarDB();
	$JSONData = file_get_contents("php://input");
	$dataObject = json_decode($JSONData);
	//echo $dataObject;	
	$idOrden= $dataObject->orden;
	$fuente = $dataObject->fuente;
	$files= $dataObject->files;
	$insertado=false;
	foreach ($files as $datos) {
		$url_imagen = $datos->url;
		$sql = "INSERT INTO imagen (idOrden,img,fuente) VALUES ('$idOrden', '$url_imagen','$fuente' )";
		if ($conn->query($sql) === TRUE)
				$insertado=true;
	}
	if ($insertado)
		echo json_encode(array('guardado'=>true, 'msg' => 'Imagen(es) insertada(s) con éxito'));
	else 
		echo json_encode(array('guardado'=>false, 'msg' => 'Error al insetar imagen, vuelva a intentar ', 'error'=> $conn->error));
		
	$conn->close();
		
?>
