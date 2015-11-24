# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#click-me").on "click", ->
    if $(@).toggleClass("btn-danger")
    else
      $(@).addClass("btn-danger")



  $("#cap-each").on "keyup", ->
    $("#text").html 
