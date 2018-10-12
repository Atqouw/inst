
$(document).on 'turbolinks:load', ->
  $('.posts-section').infinitescroll
    navSelector: ".posts-pagination" # selector for the paged navigation (it will be hidden)
    nextSelector: ".posts-pagination a[rel=next]" # selector for the NEXT link (to page 2)
    itemSelector: ".posts-section .post" # selector for all items you'll retrieve


