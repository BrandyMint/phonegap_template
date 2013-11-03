#@Afisha.module "Controller", (Controllers, App, Backbone, Marionette, $, _) ->
class Afisha.Routers.AppRouter extends Backbone.Router

  initialize: () ->
    @shows = @fetchShows()
    #@movies = @fetchMovies()
    #@cinemas = @fetchCinemas()
    @generateIndexView(@shows)

  generateIndexView: (events, objects)->
    @index_view ||= new Afisha.Views.IndexView
    html = @index_view.render(events, objects)
    $('@index-container').html(html)

  fetchShows: () ->
    collection = new Afisha.Collections.ShowsCollection()
    collection.fetch({async: false})
    collection

  #fetchIndexObjects: () ->
  #  collection = new App.Collections.ObjectsCollection()
  #  collection.fetch({async: false})
  #  collection
