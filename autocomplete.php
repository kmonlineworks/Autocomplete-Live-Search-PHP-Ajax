<?php 
require 'config.php';
session_start();

$sql = "SELECT * FROM user WHERE name LIKE '%".$_POST['search']."%'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
	
	while ($row = mysqli_fetch_assoc($result)) {
		
		echo "<p class='user'>" .$row['name']. "</p>";
	}
}
else{
	echo "<p> No data found...</p>";
}