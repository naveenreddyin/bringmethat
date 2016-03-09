# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#country-state-city').change ->
		input_country = $(this);
		country = $('#country-state-city :selected').val()
		$.getJSON('/states/'+country,(data, resp) -> 
      		console.log(data)
    	)