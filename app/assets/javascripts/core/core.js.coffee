#= require lightbox/lightbox.js

$(document).on "turbolinks:load", ->
  new LightBoxPreview()

class LightBoxPreview
  constructor: ->
    @initLightBox()

  initLightBox: =>
    lightbox.init()


$(document).on "turbolinks:load", ->
  $('#posts').imagesLoaded ->
    $('#posts').masonry
      itemSelector: '.box'
      isFitWidth: true