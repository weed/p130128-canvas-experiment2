# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class AppViewModel
  constructor: ->
    @fileName  = ko.observable "Hoge"
    @sources = []

$ ->
  v = new AppViewModel
  $.getJSON(
    '/images.json'
  ).done((data) ->
    for d in data
      v.sources.push '/assets/' + d.path

    ko.applyBindings v
  )
  $('#button')
    .on 'click', ->
      simg = new ScrambledImage021 v.fileName()
      simg.paint()