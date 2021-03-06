# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User Model
user = User.new({ username: "ernestomelchor", user_email: "ernesto@example.com" })
user.save
user = User.new({ username: "peterjang", user_email: "peter@example.com" })
user.save
user = User.new({ username: "gerardmarkham", user_email: "gerard@example.com" })
user.save

#Tweet Model
tweet = Tweet.new({ text: "You suck!", user_id: 1 })
tweet.save
tweet = Tweet.new({ text: "Cool story bro!", user_id: 1 })
tweet.save
tweet = Tweet.new({ text: "Hello world!", user_id: 2 })
tweet.save
tweet = Tweet.new({ text: "Get that corn out of my face!", user_id: 2 })
tweet.save
tweet = Tweet.new({ text: "I am the best at FIFA!", user_id: 3 })
tweet.save
tweet = Tweet.new({ text: "What's up bro?", user_id: 3 })
tweet.save
