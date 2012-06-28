# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  # Ajax sorting and pagination on click
  $('#clients td.sortable a, #clients .pagination a').live('click', ->
    $.getScript(this.href)
    false
  )
  # Ajax search on submit
  $('#clients_search').submit( ->
    $.get(this.action, $(this).serialize(), null, 'script')
    false
  )
  # Ajax search on keyup
  $('#clients_search #keyword').keyup( ->
    $.get($("#clients_search").attr("action"), $("#clients_search").serialize(), null, 'script')
    false
  )