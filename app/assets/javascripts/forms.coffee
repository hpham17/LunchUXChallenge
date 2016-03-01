# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  children_index = 0
  adults_index = 0
  #Tips
  $('.form_children_name').eq(0).mouseover(->
    $('.form_children_name.description').eq(0).addClass("inline-block")
    return
  ).mouseout ->
    $('.form_children_name.description').eq(0).removeClass("inline-block")
    return
  # Case Number Tip
  $('#form_case_number').eq(0).mouseover(->
    $('#form_case_number.description').eq(0).addClass("inline-block")
    return
  ).mouseout ->
    $('#form_case_number.description').eq(0).removeClass("inline-block")
    return
  # Child Income Tip
  $('.form_child_income').eq(0).mouseover(->
    $('.form_child_income.description').eq(0).addClass("inline-block")
    return
  ).mouseout ->
    $('.form_child_income.description').eq(0).removeClass("inline-block")
    return
  # Adult Earnings Tip
  $('.form_adults_earnings').eq(0).mouseover(->
    $('.form_adults_earnings.description').eq(0).addClass("inline-block")
    return
  ).mouseout ->
    $('.form_adults_earnings.description').eq(0).removeClass("inline-block")
    return
  # Adult Public Tip
  $('.form_adults_public').eq(0).mouseover(->
    $('.form_adults_public.description').eq(0).addClass("inline-block")
    return
  ).mouseout ->
    $('.form_adults_public.description').eq(0).removeClass("inline-block")
    return
  # Adult Pensions Tip
  $('.form_adults_pensions').eq(0).mouseover(->
    $('.form_adults_pensions.description').eq(0).addClass("inline-block")
    return
  ).mouseout ->
    $('.form_adults_pensions.description').eq(0).removeClass("inline-block")
    return
  # Total Household Members
  $('.form_total_household_members').eq(0).mouseover(->
    $('.form_total_household_members.description').eq(0).addClass("inline-block")
    return
  ).mouseout ->
    $('.form_total_household_members.description').eq(0).removeClass("inline-block")
    return
  # SSN
  $('.form_ssn').eq(0).mouseover(->
    $('.form_ssn.description').eq(0).addClass("inline-block")
    return
  ).mouseout ->
    $('.form_ssn.description').eq(0).removeClass("inline-block")
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
