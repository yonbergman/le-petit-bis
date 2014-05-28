# For more information see: http://emberjs.com/guides/routing/

LePetitBis.Router.map ()->
  @resource 'restaurants', ->
    @route "order", path: "/:restaurant_id/order"
