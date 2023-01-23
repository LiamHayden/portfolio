# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

projects = Project.create([{ title: "Private Events", description: "qwerty", 
  link: "https://github.com/LiamHayden/private-events", img: "private_events.png" }, 
  { title: "Micro Reddit", description: "qwerty", 
    link: "https://github.com/LiamHayden/micro-reddit", img: "micro_reddit.png" }, 
  { title: "Secrets", description: "qwerty", 
    link: "https://github.com/LiamHayden/secrets", img: "secrets.png" }])
