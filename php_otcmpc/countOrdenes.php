<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$estado = $_GET['estado'];
	$wh = '';
	if (isset($estado))
		$wh =  "WHERE estado = ".$estado;
	$sql = "SELECT nombreArea as area,count(*) as count
		FROM ordentrabajo AS o
		INNER JOIN servicio AS s ON o.idServicio=s.idServicio
		INNER JOIN area AS a ON s.idArea = a.idArea
		$wh GROUP BY area";
	$result = mysqli_query($conn,$sql);
	
	$rows = array();
	while($r = mysqli_fetch_array($result)) {
		$rows[] = $r;
	}
	//foreach ( $conn->query($sql) as $fila ) 

	echo json_encode($rows);
	$conn->close();

?>