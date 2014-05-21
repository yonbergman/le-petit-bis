# For more information see: http://emberjs.com/guides/routing/

LePetitBis.Router.map ()->
  @resource 'restaurants', ->
    @route "show", path: "/:restaurant_id"
