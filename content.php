<?php
include 'config.php';

$sql = "SELECT * FROM user";
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
else{
	echo "<tr><td colspan='7'>No data found...!</td></tr>";
}