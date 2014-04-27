# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

delay = (ms, func) ->
  setTimeout func, ms

$(document).on "ready page:change", ->
  $('#tagit_tags').tagit(
    {
      availableTags: $('#tagit_tags').data('tags'),
      singleField: true,
      singleFieldNode: $('#post_tags')
    }
  );