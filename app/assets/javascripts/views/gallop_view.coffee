class @GallopView extends Backbone.View

  id: "gallop-view"
  template: JST["templates/gallop_view"]
  events:
    "click .unicorn": "clickUnicorn"

  render: ->
    $(@el).html @template
    @loadDreamTrack()
    @
  
  clickUnicorn: (e) ->
    @scareUnicorn()
    
  scareUnicorn: ->
    $(@el).addClass("scared")
    @dreamTrack.play()

  loadDreamTrack: ->
    url = $("link[rel='dream-track']").attr("href")
    @dreamTrack = $("<audio preload/>").attr("src", url).get(0)
