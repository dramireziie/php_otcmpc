<?php
	include "conectar.php";
    $conn = conectarDB();
	$JSONData = file_get_contents("php://input");
	$dataObject = json_decode($JSONData);
	//echo $dataObject->name;	
	$password= $dataObject->password;
	$usuario= $dataObject->correo;
	$nombre= $dataObject->name;
	$funcion= $dataObject->funcion;
	$rut= $dataObject->rut;	
	$telefono=$dataObject->telefono;
	$clave = password_hash($password, PASSWORD_DEFAULT);
	
	/* echo $password;
	echo "<br/>";
	echo $clave;
	echo "<hr/>";
	 */

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO usuario (rut, nombre, funcion, correo, telefono,clave) 
		VALUES ('$rut', '$nombre', '$funcion', '$usuario', '$telefono', '$clave' )";

if ($conn->query($sql) === TRUE) {
  echo json_encode(array('registrado'=>true, 'msg' => 'Nuevo usuario creado con éxito'));
} else {
  echo json_encode(array('registrado'=>false, 'msg' => 'Error al ingresar el nuevo registro, vuelva a intentar ', 'error'=> $conn->error));
}

$conn->close();
	
//fuente https://www.w3schools.com/php/php_mysql_insert.asp
?>