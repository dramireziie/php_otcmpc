<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$sql = "Select * from area";
	$result = mysqli_query($conn,$sql);
	if (!$result)
		printf("Errormessage: %s\n", mysqli_error($conn));
	$rows = array();
	while($r = mysqli_fetch_array($result)) {
		$rows[] = $r;
		
	}
	echo $rows;
	//foreach ( $conn->query($sql) as $fila ) 

	echo json_encode($rows);
	$conn->close();

?>