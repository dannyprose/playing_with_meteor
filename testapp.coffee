if Meteor.is_client

  Products = new Array(
    Name: "Screw Driver"
    Price: "1.50"
    InStock: true
  ,
    Name: "Hammer"
    Price: "3.00"
    InStock: false
  )

  Template.Products.ProductArr = ->
    Products

if Meteor.is_server
  Meteor.startup ->
    # code to run on server at startup