# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

projects = Project.create(
  [
    {
      title: "Private Events", 
      description: "The Private Events app allows users to create events 
      and manage user signups. 
      A user can create an account and create an event, 
      creators can also delete and edit their events. 
      Then users can attend these events, or remove their attendance. 

      The app required the use of many-to-many relationships, between the Event and 
      User models.  
      Along with scopes to filter between past and future events.
      And full CRUD operation on each created event.",
      link: "https://github.com/LiamHayden/private-events", img: "private_events.png" 
    },

    { 
      title: "Micro Reddit", 
      description: "The Micro Reddit app is a condensed version of Reddit.com. 
      It allows users to create, edit or delete their posts. 
      Users can also comment on any post. 
      All posts are then displayed on the home page in descending or ascending order 
      depending on the users' preference. 
      The Devise gem is utilised to allow users to create accounts.

      The app required multiple one-to-many relationships between each table,
      the ability to comment on a post,
      validations within each model
      and scopes to change the order of the posts.", 
      link: "https://github.com/LiamHayden/micro-reddit", img: "micro_reddit.png" 
    },

    {
      title: "Flight Booker",
      description: "The Odin Flight Booker app will allow a user to select a flight (departure and arrival), 
      along with dates and the number of passengers. 
      A user will be able to select from a list of seeded airports.

      The app will require the use of seed data,
      nested forms
      and associations.",
      link: "#", img: "odin_flight_booker.png"
    }
  ]
)
