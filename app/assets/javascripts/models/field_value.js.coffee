LePetitBis.FieldValue = DS.Model.extend

  field: DS.belongsTo 'field'
  value: DS.attr(defaultTo: ->
    debugger
    return false if @get('field.isBoolean')
    return null
  )
    # @store.createRecord('field_value', field: field))

  key: Ember.computed.alias('field.key')
  type: Ember.computed.alias('field.type')
