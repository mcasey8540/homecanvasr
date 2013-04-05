# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#post_county_id').parent().hide()
  $('#post_city_code').parent().hide()
  counties = $('#post_county_id').html()
  cities = $('#post_city_code').html()

  $('#post_state_id').change ->
  	state = $('#post_state_id :selected').text()
  	options = $(counties).filter("optgroup[label='#{state}']").html()
  	if options
  		$('#post_county_id').html(options)
  		$('#post_county_id').parent().show()
  		county = $('#post_county_id :selected').text()
  		city_options = $(cities).filter("optgroup[label='#{county}']").html()
	  	if city_options
	  		$('#post_city_code').html(city_options)
	  		$('#post_city_code').parent().show()
	  	else
	  		$('#post_city_code').empty()
	  		$('#post_city_code').parent().hide()
	  	$('#post_county_id').change ->
	  		county = $('#post_county_id :selected').text()
	  		city_options = $(cities).filter("optgroup[label='#{county}']").html()
	  		if city_options
	  			$('#post_city_code').html(city_options)
	  			$('#post_city_code').parent().show()
	  		else
	  			$('#post_city_code').empty()
	  			$('#post_city_code').parent().hide()
  	else
  		$('#post_county_id').empty()
  		$('#post_county_id').parent().hide()