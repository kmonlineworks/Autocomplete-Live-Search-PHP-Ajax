$(document).ready(function(){

	// Live Search Process on Basis of autocomplete
	$(document).on('click', '.user', function(){

		var searchText = $(this).text();

		$.ajax({
			url: "search.php",
			method: "POST",
			data: {searchText: searchText},
			success: function(data){

				$('#search-result').addClass('hidden');
				$('.tbody').html(data);
			}
		});
	});

	// Autocompelet Textbox Process for Live Search
	$('#search').keyup(function(){

		var search = $(this).val();

		if (search != '') {

			$.ajax({
				url: "autocomplete.php",
				method: "POST",
				data: {search: search},
				success: function(data){

					$('#search-result').removeClass('hidden');
					$('#search-result').html(data);
				}
			});
		} 
		else {
			$('#search-result').addClass('hidden');
			$('#search-result').html('');
			load_content();
		}
	});

	// Load / Fetch Data from Database
	function load_content(search){

		$.ajax({
			url: "content.php",
			method: "POST",
			data: {},
			success: function(data){

				$('.tbody').html(data);
			}
		});
	}
	load_content();
	// setInterval(function(){ load_content(); }, 3000);

});
