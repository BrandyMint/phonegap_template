@Afisha.module "Controller", (Entities, Controllers, App, Backbone, Marionette, $, _) ->

  #class App.Models.Object extends Backbone.Model
  #  paramRoot: "show"

  class App.Collections.ShowsCollection extends Backbone.Collection
    model: App.Entities.Model.Show
    url: 'http://www.corsproxy.com/immense-shelf-2808.herokuapp.com/'

    initialize: ->
      @on 'sync', @build_collection

    build_collection: () ->
      objects = this.last().get('response')
      this.reset(objects)
