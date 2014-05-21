LePetitBis.IndexRoute = Ember.Route.extend(
  beforeModel: -> @transitionTo('restaurants')
)
