<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$wh = '';
	if (isset($_GET['estado'])){
		$estado = $_GET['estado'];
		$wh =  "WHERE estado = ".$estado;
	}
	$sql = "SELECT idOrden, fechaSolicitud,fechaInicio, fechaTermino, u.nombre,
		actividad, criticidad, e.descrip as estado, descripcion, observaciones,conformidad,
		nombreArea as area
		FROM ordentrabajo AS o
		INNER JOIN usuario AS u ON o.idSolicitante=u.correo
		INNER JOIN servicio AS s ON o.idServicio=s.idServicio
		INNER JOIN area AS a ON s.idArea = a.idArea
		INNER JOIN estado as e on o.estado=e.idEstado
		$wh ";
	$result = mysqli_query($conn,$sql);
	
	$rows = array();
	while($r = mysqli_fetch_array($result)) {
		$rows[] = $r;
	}
	//foreach ( $conn->query($sql) as $fila ) 

	echo json_encode($rows);
	$conn->close();

?>