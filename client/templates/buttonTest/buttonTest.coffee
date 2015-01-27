Template.buttonTest.created = ->
  @counter = new ReactiveVar(0)


Template.buttonTest.rendered = ->
  console.log("buttonTest rendered")
  Waves.displayEffect()


Template.buttonTest.helpers
  counter: ->
    Template.instance().counter.get()


Template.buttonTest.events
  'click #counter-button': (e, tmpl) ->
    console.log("counter click")
    tmpl.counter.set(tmpl.counter.get() + 1)
