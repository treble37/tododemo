# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("a[data-remote]").on "ajax:success", (e, data, status, xhr) ->
    $(this).closest('div.row').fadeOut();
    $("<h4><div class='alert alert-success'>Task destroyed.</div></h4>").appendTo("h1");