#= require jquery
#= require underscore
#= require backbone

#= require_tree ./templates
#= require_tree ./views

# The JS for the entire application
#
# The load order of files is explicitly specified above using Sprockets
# directives.

class App extends Backbone.Router
  routes:
    "": "home"
  home: ->
    $("body").append new GallopView().render().el

$ ->
  app = new App
  Backbone.history.start pushState:true, root:"/"
