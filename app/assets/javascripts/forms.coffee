# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  children_index = 0
  adults_index = 0
  #Tips
  $('.tiptext').mouseover(->
    $(this).children('.description').show()
    return
  ).mouseout ->
    $(this).children('.description').hide()
    return
  #Show initial fields
  $('.form_children_name').eq(children_index).slideDown 'slow'
  $('.form_children_status').eq(children_index).slideDown 'slow'
  $('.form_adults_name').eq(adults_index).slideDown 'slow'
  $('.form_adults_earnings').eq(adults_index).slideDown 'slow'
  $('.form_adults_earnings_times').eq(adults_index).slideDown 'slow'
  $('.form_adults_public').eq(adults_index).slideDown 'slow'
  $('.form_adults_public_times').eq(adults_index).slideDown 'slow'
  $('.form_adults_pensions').eq(adults_index).slideDown 'slow'
  $('.form_adults_pensions_times').eq(adults_index).slideDown 'slow'
  # Add a child
  $('.add-child').click ->
    children_index += 1
    $('.form_children_name').eq(children_index).slideDown 'slow'
    $('.form_children_status').eq(children_index).slideDown 'slow'
    return
  # Remove a child
  $('.remove-child').click ->
    $('.form_children_name').eq(children_index).slideUp 'slow'
    $('.form_children_status').eq(children_index).slideUp 'slow'
    children_index -= 1
    return
  # Add an adult
  $('.add-adult').click ->
    adults_index += 1
    $('.form_adults_name').eq(adults_index).slideDown 'slow'
    $('.form_adults_earnings').eq(adults_index).slideDown 'slow'
    $('.form_adults_earnings_times').eq(adults_index).slideDown 'slow'
    $('.form_adults_public').eq(adults_index).slideDown 'slow'
    $('.form_adults_public_times').eq(adults_index).slideDown 'slow'
    $('.form_adults_pensions').eq(adults_index).slideDown 'slow'
    $('.form_adults_pensions_times').eq(adults_index).slideDown 'slow'
    return
  # Remove an adult
  $('.remove-adult').click ->
    $('.form_adults_name').eq(adults_index).slideUp 'slow'
    $('.form_adults_earnings').eq(adults_index).slideUp 'slow'
    $('.form_adults_earnings_times').eq(adults_index).slideUp 'slow'
    $('.form_adults_public').eq(adults_index).slideUp 'slow'
    $('.form_adults_public_times').eq(adults_index).slideUp 'slow'
    $('.form_adults_pensions').eq(adults_index).slideUp 'slow'
    $('.form_adults_pensions_times').eq(adults_index).slideUp 'slow'
    adults_index -= 1
    return
return
