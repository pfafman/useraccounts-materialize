Router.configure
  layoutTemplate: 'layout'
  notFoundTemplate: 'notFound'
  loadingTemplate: 'loading'

  yieldTemplates:
    navbar:
      to: 'navbar'
    footer:
      to: 'footer'


Router.route '/',
  onBeforeAction: ->
    Router.go('/buttonTest')


Router.route '/buttonTest'


Router.route '/formTest'


Router.route '/tableTest'


Router.onAfterAction ->
  console.log("Router.onAfterAction")
  Waves.displayEffect()
  
  ###
  $('.dropdown-button').dropdown
    "hover": false
  $('ul.tabs').tabs()
  $('.tab-demo').show().tabs()
  $('.parallax').parallax()
  $('.modal-trigger').leanModal()
  $('.tooltipped').tooltip
    "delay": 45
  $('.collapsible-accordion').collapsible()
  $('.collapsible-expandable').collapsible
    "accordion": false
  $('.materialboxed').materialbox()
  $('.scrollspy').scrollSpy()
  $('.button-collapse').sideNav()
  $('.datepicker').pickadate()
  ###
