<?php
	include "conectar.php";
    $conn = conectarDB();
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	$sql = "Select * from area";
	//foreach ( $conn->query($sql) as $fila ) 
	$datos = array();
	try {
/*             $statement = $conn->prepare($sql);


            $statement->execute(); // Execute the statement.
            $result = $statement->get_result(); // Binds the last executed statement as a result. */
/* 			if ($result->num_rows >= 1 && !is_null($result->num_rows)) {
				$datos [] = $result->fetch_array();  
			}
				
			else 
				echo "no hay resultados";
			 */
			$result = $conn->query($sql); 
			while ($row = $conn->query($sql)) {
					$statsArray[] = $row;
			}
			echo json_encode($statsArray);
            printf("nada1",json_encode(($datos))); // Parse to JSON and print.
			
        } catch (mysqli_sql_exception $e) { // Failed to connect? Lets see the exception details..
            echo "MySQLi Error Code: " . $e->getCode() . "<br />";
            echo "Exception Msg: " . $e->getMessage();
            exit(); // exit and close connection.
        }

    $conn->close(); // finally, close the connection
	
	
	

?>