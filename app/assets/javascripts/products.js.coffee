# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  # Ajax sorting and pagination on click
  $('#products td.sortable a, #products .pagination a').live('click', ->
    $.getScript(this.href)
    false
  )
  # Ajax search on submit
  $('#products_search').submit( ->
    $.get(this.action, $(this).serialize(), null, 'script')
    false
  )
  # Ajax search on keyup
  $('#products_search #keyword').keyup( ->
    $.get($("#products_search").attr("action"), $("#products_search").serialize(), null, 'script')
    false
  )