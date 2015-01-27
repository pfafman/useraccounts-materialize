
Template.navbar.rendered = ->
  $(".button-collapse").sideNav()
  #Waves.displayEffect()
  

Template.navbar.events
  'click a': (e, tmpl) ->
    $('#sidenav-overlay').click()
    Meteor.defer ->
      console.log("remove overlay")
      $('#sidenav-overlay').remove()