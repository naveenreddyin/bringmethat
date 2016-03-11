# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#country-state-city').change ->
		input_country = $(this);
		input_state = $('#state-city')
		country = $('#country-state-city :selected').val();
		city = $('#city')
		do input_state.empty
		do city.hide
		do $('.frontpage-submit').hide
		do input_state.hide
		$.getJSON('/states/'+country,(data, resp) -> 
      		# console.log data
      		if Object.keys(data).length > 0
      			first_opt = "<option value='select' selected>Select State</option>"
      			input_state.append first_opt
      			for key,value of data
      				# console.log "#{key} and #{value}"
      				opt = "<option value=#{key}>#{value}</option>"
      				input_state.append opt
      			# console.log input_state

      			do input_state.show
      		else
      			do input_state.hide
      			do city.hide
    	)
	
	$('#state-city').change ->
		country = $('#country-state-city :selected').val();
		state_ref = $(this);
		state = state_ref.val()
		city = $('#city')
		do city.empty
		$.getJSON('/cities/'+state+'/'+country,(data,resp) ->
			# console.log data
			if Object.keys(data).length > 0
				first_opt = "<option value='select' selected>Select City</option>"
				city.append first_opt
				for key, value of data
					opt = "<option value=#{key}>#{value}</option>"
					city.append opt
				do city.show
				do $('.frontpage-submit').show
			else
				do city.hide
		)