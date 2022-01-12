<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$sql = "Select * from area";
	try {
            // Try Connect to the DB with new MySqli object - Params {hostname, userid, password, dbname}
            //$mysqli = new mysqli("localhost", "root", "", "mysqli_examples");

            
            $statement = $conn->prepare($sql);


            $statement->execute(); // Execute the statement.
            $result = $statement->get_result(); // Binds the last executed statement as a result.

            echo json_encode(($result->fetch_assoc())); // Parse to JSON and print.
  
        } catch (mysqli_sql_exception $e) { // Failed to connect? Lets see the exception details..
            echo "MySQLi Error Code: " . $e->getCode() . "<br />";
            echo "Exception Msg: " . $e->getMessage();
            exit(); // exit and close connection.
        }

    $mysqli->close(); // finally, close the connection
	
	
	
	
	/* 
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
/* 	echo json_encode($rows[1]);
	$conn->close(); */ */

?>