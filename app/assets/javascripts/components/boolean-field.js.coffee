LePetitBis.BooleanFieldComponent = Ember.Component.extend
  field: null
  tagName: 'a'
  classNames: 'list-group-item'
  attributeBindings: ['href'],
  href: '#'

  toggle: ->
    v = @get('field').get('value')
    @get('field').set('value', !v)
    true

  didInsertElement: (el) ->
    @$().click (ev) =>
      ev.preventDefault()
      @toggle()
