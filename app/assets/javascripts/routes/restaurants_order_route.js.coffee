LePetitBis.RestaurantsOrderRoute = Ember.Route.extend
  model: (params) ->
    order = @store.createRecord('order')
    @store.find('restaurant', params.restaurant_id).then (restaurant)=>
      order.set('restaurant', restaurant)
      restaurant.get('fields').then (fields) =>
        fields.forEach (field) =>
          fieldValue = @store.createRecord('fieldValue', field: field)
          order.get('fields').pushObject(fieldValue)
    return order
