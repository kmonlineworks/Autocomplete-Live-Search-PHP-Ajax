<?php 
require 'header.php';
?>

	<h4>WELCOME USER</h4>
	<h4>AUTOCOMPLETE & SEARCH USING PHP AJAX</h4>
	<div class="main">

		<!-- Search -->
		<div class="search">
			<input type="text" id="search" name="search" placeholder="Search" autocomplete="off">
			<div class="hidden" id="search-result"></div>
		</div>

		<!-- DataTable -->
		<table width="100%" border="1" style="text-align: center;">
			<thead>
				<tr>
					<th colspan="4">DataTable</th>
				</tr>
				<tr>
					<th>User</th>
					<th>Email</th>
					<th>Status</th>
					<th>Address</th>
				</tr>
			</thead>
			<tbody class="tbody">
				
			</tbody>
		</table>
	</div>

<?php require 'footer.php'; ?>