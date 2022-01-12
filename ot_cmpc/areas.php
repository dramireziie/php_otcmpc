<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$sql = "Select * from area";
	
	$result = $conn->query($sql);
	$rows = array();
	while($r = $result->fetch_array()) {
		$rows[] = $r;
	}
	
/* 	$result = mysqli_query($conn,$sql);
	if (!$result)
		printf("Errormessage: %s\n", mysqli_error($conn));
	$rows = array();
	while($r = mysqli_fetch_assoc($result)) {
		$rows[] = $r;
	}
	 */
	//foreach ( $conn->query($sql) as $fila ) 
	//echo json_encode($fila);
	printf ("nada",json_encode($r));
	$conn->close();

?>