LePetitBis.Order = DS.Model.extend
  name: DS.attr 'string'
  restaurant: DS.belongsTo 'restaurant'
  hash: DS.attr 'string', defaultTo: -> 'foo'
  fields: DS.hasMany 'fieldValue'

  # restaurantName: Ember.computed.alias('restaurant.name')
