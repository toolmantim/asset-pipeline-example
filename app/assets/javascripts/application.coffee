#= require ./vendor/jquery
#= require ./vendor/underscore
#= require ./vendor/backbone

#= require_tree ./templates
#= require_tree ./views

class App extends Backbone.Router
  routes:
    "": "home"
  home: ->
    $("body").append new GallopView().render().el

$ ->
  app = new App
  Backbone.history.start pushState:true, root:"/"
