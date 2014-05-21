LePetitBis.RestaurantsIndexRoute = Ember.Route.extend
  model: -> @store.find('restaurant')
