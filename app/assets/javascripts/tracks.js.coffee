# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#track_band_name').autocomplete
    source: $('#track_band_name').data('autocomplete-source'),
    minLength: 3
