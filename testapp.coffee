Products = new Meteor.Collection("Products")

if Meteor.is_client

  Template.Products.ProductArr = ->
    Products.find {},
      sort:
        Name: 1
    
  Template.Products.events = "click .Product": ->
    if @InStock
      confirm "Would you like to buy a " + @Name + " for " + @Price + "$"
    else
      alert "That item is not in stock"

if Meteor.is_server
  Meteor.startup ->
    # code to run on server at startup