<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$sql = "Select * from area";
	//foreach ( $conn->query($sql) as $fila ) 
	
	try {
            $statement = $conn->prepare($sql);


            $statement->execute(); // Execute the statement.
            $result = $statement->get_result(); // Binds the last executed statement as a result.
			if ($result->num_rows >= 1 && !is_null($result->num_rows)) 
				echo json_encode($result->fetch_array());
			else 
				echo "no hay resultados";
            printf("nada",json_encode(($result->fetch_array()))); // Parse to JSON and print.
  
        } catch (mysqli_sql_exception $e) { // Failed to connect? Lets see the exception details..
            echo "MySQLi Error Code: " . $e->getCode() . "<br />";
            echo "Exception Msg: " . $e->getMessage();
            exit(); // exit and close connection.
        }

    $conn->close(); // finally, close the connection
	
	
	

?>