<?php 

include 'config.php';

if(isset($_POST['searchText'])){
	$sql = "SELECT * FROM user WHERE name LIKE '%".$_POST['searchText']."%'";
	$result = mysqli_query($conn, $sql);

	if (mysqli_num_rows($result) > 0) {
		
		while ($row = mysqli_fetch_assoc($result)) {
			
			$output = "<tr>
						<td>".$row['name']."</td>
						<td>".$row['email']."</td>
						<td>".$row['status']."</td>
						<td>".$row['address']."</td>";

			echo $output;
		}
	}
}