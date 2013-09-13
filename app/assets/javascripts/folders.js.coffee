$ ->
  $("a.link-folder[data-remote]").on "ajax:success", (e, data, status, xhr) ->
    $(this).closest('div.row').fadeOut();
    $("<h4><div class='alert alert-success'>Folder destroyed.</div></h4>").appendTo("h1");