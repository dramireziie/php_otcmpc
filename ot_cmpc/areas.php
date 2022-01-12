<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$sql = "Select * from area";
	
	$result = $conn->query($sql);
	$rows = array();
	$i=0;
	while($r = $result->fetch_array()) {
		$rows[$i] = $r;
		//echo json_encode($r);
		$i++;
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
	echo json_encode($rows);
	$conn->close();

?>