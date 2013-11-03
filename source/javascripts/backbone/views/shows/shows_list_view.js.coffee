class Afisha.Views.ShowsListView extends Marionette.CollectionView
  tagName: 'ul'
  className: 'shows-list-block'
  itemView: Afisha.Views.ShowsListItemView

  appendHtml: (collectionView, itemView, index) ->
    collectionView.$el.prepend itemView.el
