
#
#  User Accounts setup
#

Meteor.startup ->

  ###
  ServiceConfiguration.configurations.remove
    $or: [
      service: "facebook"
    ,
      service: "github"
    ,
      service: "google"
    ,
      service: "linkedin"
    ]


  # Add Facebook
  ServiceConfiguration.configurations.insert
    "service": "facebook",
    "appId": "XXXXXXXXXXXXXXX",
    "secret": "XXXXXXXXXXXXXXXXXXX"
    
  # Add GitHub configuration entry
  ServiceConfiguration.configurations.insert
    "service": "github"
    "clientId": "XXXXXXXXXXXXXXXXXXXX"
    "secret": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  

  # Add Google configuration entry
  ServiceConfiguration.configurations.insert
    "service": "google"
    "clientId": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    "client_email": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    "secret": "XXXXXXXXXXXXXXXXXXXXXXXX"
  

  # Add Linkedin configuration entry
  ServiceConfiguration.configurations.insert
    "service": "linkedin"
    "clientId": "XXXXXXXXXXXXXX"
    "secret": "XXXXXXXXXXXXXXXX"
  

  ###