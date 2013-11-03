@Afisha.module "Controller", (Controllers, App, Backbone, Marionette, $, _) ->

  class Controllers.Main extends Marionette.Controller

    initialize: () ->
      @shows = @fetchShows()
      #@movies = @fetchMovies()
      #@cinemas = @fetchCinemas()
      @generateIndexView(@shows)

    generateIndexView: (events, objects)->
      @index_view ||= new App.Views.IndexView
      html = @index_view.render(events, objects)
      $('@index-container').html(html)

    fetchShows: () ->
      collection = new App.Collections.ShowsCollection()
      collection.fetch({async: false})
      collection

    #fetchIndexObjects: () ->
    #  collection = new App.Collections.ObjectsCollection()
    #  collection.fetch({async: false})
    #  collection
