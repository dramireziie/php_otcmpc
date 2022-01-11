<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$idOrden = $_GET['idOrden'];
	$sql = "SELECT * FROM imagen where idOrden = '$idOrden' ORDER BY fuente";
	
	$result = mysqli_query($conn,$sql);
	
	$rows = array();
	while($r = mysqli_fetch_array($result)) {
		$rows[] = $r;
	}
	//foreach ( $conn->query($sql) as $fila ) 

	echo json_encode($rows);
	$conn->close();

?>