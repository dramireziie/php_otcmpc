<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$area=$_POST['area'];
	$sql = "Select * from servicio where idArea = '$area' ";
	
	$result = mysqli_query($conn,$sql);
	
	$rows = array();
	while($r = mysqli_fetch_array($result)) {
		$rows[] = $r;
	}
	//foreach ( $conn->query($sql) as $fila ) 
	
	echo json_encode($rows);
	$conn->close();

?>